import 'package:elvan_admin/core/failure/failure.dart';
import 'package:elvan_admin/core/result/result.dart';
import 'package:elvan_admin/core/shared_preferances/local_data.dart';
import 'package:elvan_admin/features/auth/data/repository/auth_repository.dart';
import 'package:elvan_admin/features/auth/data/repository/auth_repository_impl.dart';
import 'package:elvan_shared/domain_models/index.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_usecases.g.dart';

@riverpod
AuthUseCases authUseCase(AuthUseCaseRef ref) {
  return AuthUseCases(
    authRepository: ref.read(authRepositoryProvider),
  );
}

class AuthUseCases {
  final AuthRepository authRepository;

  const AuthUseCases({
    required this.authRepository,
  });

  Future<Result<ElvanUser>> getUserUseCase({required String userId}) async {
    final user = await authRepository.getElvanUser(userId: userId);

    return user.when(
      success: (elvanUserDto) {
        return Result.success(
          ElvanUser.fromDto(elvanUserDto),
        );
      },
      failure: (failure) {
        return Result.failure(failure);
      },
    );
  }

  Future<Result<ElvanUser>> signInWithEmailAndPasswordAndGetElvanUserUseCase({
    required String email,
    required String password,
  }) async {
    if (email.isEmpty || password.isEmpty) {
      return const Result.failure(Failure(message: 'Email or password is empty'));
    }

    final user = await authRepository.singInWithEmailAndPassword(
      email: email,
      password: password,
    );

    return user.when(success: (data) async {
      final elvanUser = await getUserUseCase(userId: data!.uid);
      return elvanUser.when(
        success: (elvanUser) {
          if (elvanUser.role == "admin") {
            LocalData.getInstatance().storeUserId(elvanUser.uid!);
            return Result.success(elvanUser);
          } else {
            return const Result.failure(Failure(error: "Error", message: "Login Failed."));
          }
        },
        failure: (failure) {
          print("${failure.message}");
          return Result.failure(failure);
        },
      );
    }, failure: (failure) {
      print("${failure.message}");
      return Result.failure(failure);
    });
  }

  Future<Result<User?>> signInWithEmailAndPasswordUseCase({
    required String email,
    required String password,
  }) async {
    return authRepository.singInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  Stream<User?> getUserStreamUseCase() {
    return authRepository.getUserStream();
  }

  Future<bool> signOutUseCase() async {
    return authRepository.signOut();
  }

  Future<Result<User>> register({
    required String name,
    required String email,
    required String password,
  }) {
    return authRepository.registerUsingEmailPassword(name: name, email: email, password: password);
  }

  Future<User?> getCurrentUser() {
    return authRepository.getCurrentUser();
  }

  Future<ElvanUser?> getOrderedUser({
    required String userId,
  }) async {
    final user = await authRepository.getUser(userId: userId);
    print(user);
    if (user != null) {
      final data = ElvanUser.fromDto(user);
      return data;
    }
    return null;
  }
}
