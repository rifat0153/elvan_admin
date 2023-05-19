import 'dart:async';

import 'package:elvan_admin/app/router/navigation_provider.dart';
import 'package:elvan_admin/features/auth/domain/usecase/auth_usecases.dart';
import 'package:elvan_admin/features/auth/ui/states/auth_event.dart';
import 'package:elvan_admin/features/auth/ui/states/auth_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final authNotifierProvider = NotifierProvider<AuthNotifier, AuthState>(
  AuthNotifier.new,
);

class AuthNotifier extends Notifier<AuthState> {
  AuthNotifier() : super();

  late final AuthUseCases authUseCase;

  @override
  build() {
    // setup (just like widget initState)
    authUseCase = ref.read(authUseCaseProvider);
    handleUserStream();

    // dispose (just like widget dispose)
    // cancel all subscriptions and close all streams

    // return the initial state of the notifier
    return const AuthState();
  }

  void handleUserStream() async {
    final user = await authUseCase.getUserStreamUseCase().last;
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
        state = state.copyWith(loading: true);
        authUseCase.signOutUseCase();
      },
      registerWithEmailAndPassword: (email, password) {
        state = state.copyWith(loading: true);
        final _ = authUseCase.register(name: "", email: email, password: password);
      },
      resetPassword: (email) {},
      goToRegisterScreen: () {
        state = state.copyWith(loading: true);
      },
    );
  }

  Future getElvanUserData(String userID) async {
    final result = await authUseCase.getUserUseCase(userId: userID);

    result.when(
      success: (elvanUser) {
        state = state.copyWith(elvanUser: elvanUser, loading: state.loading, error: state.error);
      },
      failure: (failure) {
        state = state.copyWith(error: failure.message, loading: state.loading);
      },
    );
  }

  Future loginAndGetUserData(String email, String password) async {
    state = state.copyWith(loading: true);

    final result = await authUseCase.signInWithEmailAndPasswordAndGetElvanUserUseCase(
      email: email,
      password: password,
    );
    print("loading.... ${state.loading}");
    result.when(
      success: (elvanUser) {
        print("-----------${elvanUser.email}");

        state = state.copyWith(elvanUser: elvanUser, loading: false);

        ref.read(navigatorProvider.notifier).popAllPushTabRoute();
      },
      failure: (message) {
        print("---error--------${message.message}");
        state = state.copyWith(error: message.message, loading: false);
      },
    );
  }

  Future register(String email, String password) async {
    //state = const AuthState.loading();

    final result = await authUseCase.register(email: email, password: password, name: "Rayhan");

    result.when(
      success: (elvanUser) {
        // state = AuthState.error(elvanUser.displayName.toString());
      },
      failure: (message) {
        //state = AuthState.error(message.toString());
      },
    );
  }
}
