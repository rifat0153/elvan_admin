import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:elvan_admin/core/failure/failure.dart';
import 'package:elvan_admin/core/firebase/firebase_providers.dart';
import 'package:elvan_admin/core/result/result.dart';
import 'package:elvan_admin/core/shared_preferances/local_data.dart';
import 'package:elvan_shared/dtos/elvan_user/elvan_user_dto.dart';
import 'package:elvan_shared/shared/constants/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'auth_repository.dart';

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  return AuthRepositoryImpl(
    firebaseAuth: ref.watch(firebaseAuthProvider),
    firebaseFirestore: ref.watch(firebaseFirestoreProvider),
  );
});

class AuthRepositoryImpl implements AuthRepository {
  const AuthRepositoryImpl({
    required this.firebaseAuth,
    required this.firebaseFirestore,
  });

  final FirebaseFirestore firebaseFirestore;
  final FirebaseAuth firebaseAuth;

  @override
  Future<Result<ElvanUserDto>> getElvanUser({required String userId}) async {
    try {
      final user = await firebaseFirestore
          .collection(
            Constants.firebaseCollectionUsers,
          )
          .withConverter(
            fromFirestore: (snapshot, _) => ElvanUserDto.fromJson(snapshot.data()!),
            toFirestore: (elvanUserDto, _) => elvanUserDto.toJson(),
          )
          .doc(userId)
          .get();

      if (user.exists) {
        return Result.success(user.data()!);
      } else {
        return const Result.failure(
          Failure(message: 'User not found'),
        );
      }
    } on Exception catch (e) {
      return Result.failure(
        Failure(
          error: e,
          message: 'Error while getting user',
        ),
      );
    }
  }

  @override
  Future<Result<User?>> singInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final userCredential = await firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return Result.success(userCredential.user);
    } on FirebaseAuthException catch (e) {
      debugPrint(e.toString());

      return Result.failure(Failure(error: "Error", message: e.message));
    } catch (e) {
      debugPrint(e.toString());

      return Result.failure(Failure(error: "Error", message: e.toString()));
    }
  }

  @override
  Future<User?> signInAnyonymously() async {
    final userCredential = await firebaseAuth.signInAnonymously();

    return userCredential.user;
  }

  @override
  Future<bool> signOut() async {
    await firebaseAuth.signOut();
    bool removed = await LocalData.getInstatance().removeUserId();

    return removed;
  }

  @override
  Stream<User?> getUserStream() {
    return firebaseAuth.authStateChanges();
  }

  @override
  Future<Result<User>> registerUsingEmailPassword({
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      UserCredential userCredential = await firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      User? user = userCredential.user;
      await user?.updateDisplayName(name);
      await user?.reload();
      ElvanUserDto dto = ElvanUserDto(id: "2", uid: userCredential.user?.uid, email: user?.email, name: name, role: "user");
      await firebaseFirestore.collection('elvan_users').doc(user?.uid).set(dto.toJson());
      return Result.success(user!);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        debugPrint('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        debugPrint('The account already exists for that email.');
      }

      return Result.failure(Failure(error: "Error", message: e.message));
    } catch (e) {
      debugPrint(e.toString());
      return Result.failure(Failure(error: "Error", message: e.toString()));
    }
  }

  @override
  Future<User?> getCurrentUser() async {
    User? firebaseUser = firebaseAuth.currentUser;
    return firebaseUser;
  }

  @override
  Future<ElvanUserDto?> getUser({required String userId}) async {
    final user = await firebaseFirestore
        .collection(
          Constants.firebaseCollectionUsers,
        )
        .withConverter(
          fromFirestore: (snapshot, _) => ElvanUserDto.fromJson(snapshot.data()!),
          toFirestore: (elvanUserDto, _) => elvanUserDto.toJson(),
        )
        .doc(userId)
        .get();

    return user.data();
  }
}
