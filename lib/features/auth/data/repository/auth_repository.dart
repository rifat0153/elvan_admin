import 'package:elvan_admin/core/result/result.dart';
import 'package:elvan_shared/dtos/elvan_user/elvan_user_dto.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRepository {
  Future<Result<User?>> singInWithEmailAndPassword({
    required String email,
    required String password,
  });

  Future<Result<ElvanUserDto>> getElvanUser({required String userId});

  Future<ElvanUserDto?> getUser({required String userId});

  Future<User?> signInAnyonymously();

  Stream<User?> getUserStream();

  Future<bool> signOut();

  Future<Result<User>> registerUsingEmailPassword({
    required String name,
    required String email,
    required String password,
  });

  Future<User?> getCurrentUser();
}
