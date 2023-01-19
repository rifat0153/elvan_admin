
import 'dart:async';

import 'package:elvan_admin/features/auth/domain/usecase/auth_usecases.dart';
import 'package:elvan_admin/features/auth/ui/states/auth_event.dart';
import 'package:elvan_admin/features/auth/ui/states/auth_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:elvan_shared/dtos/elvan_user/elvan_user_dto.dart';

final authNotifierProvider = NotifierProvider<AuthNotifier, AuthState>(
  AuthNotifier.new,
);

class AuthNotifier extends Notifier<AuthState> {
  AuthNotifier() : super();

  late final AuthUseCases authUseCase;
  late final StreamSubscription<User?> authStateChangesSubscription;

  bool get isAuthenticated => state.maybeWhen(
        authenticated: (elvanUser) => true,
        orElse: () => false,
      );

  @override
  build() {
    // setup (just like widget initState)
    authUseCase = ref.read(authUseCaseProvider);
    authStateChangesSubscription = authUseCase.getUserStreamUseCase().listen(
          handleUserStream,
        );

    // dispose (just like widget dispose)
    // cancel all subscriptions and close all streams
    ref.onDispose(() {
      authStateChangesSubscription.cancel();
    });

    // return the initial state of the notifier
    return const AuthState.unAuthenticated();
  }

  void handleUserStream(User? user) {
    if (user != null) {
      getElvanUserData(user.uid);
    }
  }

  void onEvent(AuthEvent event) {
    // use pattern matching to handle events
    event.when(
      // loginWithPasswordAndEmail: login,
      loginWithPasswordAndEmail: loginAndGetUserData,
      logout: () {
        state = const AuthState.loading();
        authUseCase.signOutUseCase();
        state = const AuthState.unAuthenticated();
      },
      registerWithEmailAndPassword: (email, password) {
        state = const AuthState.loading();
        final result = authUseCase.signInWithEmailAndPasswordUseCase(email: email, password: password);
      },
      resetPassword: (email) {},
      goToRegisterScreen: () {
        state = const AuthState.loading();
      },
    );
  }

  Future getElvanUserData(String userID) async {
    final result = await authUseCase.getUserUseCase(userId: userID);

    result.when(
      success: (elvanUser) {
        state = AuthState.authenticated(elvanUser);
      },
      failure: (failure) {
        state = const AuthState.unAuthenticated();
      },
    );
  }

  Future loginAndGetUserData(String email, String password) async {
    state = const AuthState.loading();

    final result = await authUseCase.signInWithEmailAndPasswordAndGetElvanUserUseCase(
      email: email,
      password: password,
    );

    result.when(
      success: (elvanUser) {
        state = AuthState.authenticated(elvanUser);
      },
      failure: (message) {
        state = AuthState.error(message.toString());
      },
    );
  }
}
