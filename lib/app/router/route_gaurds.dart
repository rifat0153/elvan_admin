import 'package:auto_route/auto_route.dart';
import 'package:elvan_admin/app/router/app_router.gr.dart';
import 'package:elvan_admin/core/shared_preferances/local_data.dart';
import 'package:elvan_admin/features/auth/providers/auth_providers.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final authGuardProvider = Provider((ref) {
  final authState = ref.watch(authStateProvider);
  final loggedIn = authState.valueOrNull != null;

  print('AuthGuard: loggedIn: $loggedIn');

  return AuthGuard();
});

class AuthGuard extends AutoRouteGuard {
  AuthGuard();

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    debugPrint('AuthGuard: -> Root key -> ${router.key}');
    debugPrint('AuthGuard: -> Path -> ${resolver.route.path}');
    String? userId = await LocalData.getInstatance().getUserId();
    if (FirebaseAuth.instance.currentUser != null && userId != null) {
      resolver.next(true);
    } else {
      router.push(
        const LoginRoute(),
      );
    }
  }
}
