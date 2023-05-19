import 'package:elvan_admin/core/firebase/firebase_providers.dart';
import 'package:elvan_admin/features/auth/ui/notifer/auth_notifer.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_providers.g.dart';

// FirebaseAuth providers
@Riverpod(keepAlive: true)
bool isAuthenticated(IsAuthenticatedRef ref) {
  return ref.watch(authNotifierProvider).elvanUser != null;
}

final authStateProvider = StreamProvider<User?>((ref) {
  return ref.watch(firebaseAuthProvider).authStateChanges();
});

@riverpod
User? currentUser(CurrentUserRef ref) {
  final firebaseAuth = ref.watch(firebaseAuthProvider);

  return firebaseAuth.currentUser;
}

@riverpod
String? currentUserId(CurrentUserIdRef ref) {
  final user = ref.watch(currentUserProvider);

  return user?.uid;
}
