import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:elvan_admin/core/failure/failure.dart';
import 'package:elvan_admin/core/firebase/firebase_providers.dart';
import 'package:elvan_admin/core/logger/colored_print_log.dart';
import 'package:elvan_admin/features/timer/data/dto/timer_dto.dart';
import 'package:elvan_admin/core/result/result.dart';
import 'package:elvan_admin/features/timer/domain/repository/timer_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final timerRepsitoryProvider = Provider<TimerRepository>(((ref) {
  final firestore = ref.watch(firebaseFirestoreProvider);
  return TimerRepositoryImpl(firebaseFirestore: firestore);
}));

class TimerRepositoryImpl implements TimerRepository {
  final FirebaseFirestore firebaseFirestore;

  const TimerRepositoryImpl({required this.firebaseFirestore});

  @override
  Future<TimerDto?> getDefaultTimer() async {
    try {
      DocumentSnapshot<TimerDto> data = await firebaseFirestore
          .collection("settings")
          .doc("default-001")
          .withConverter(
              fromFirestore: (snapshot, options) =>
                  TimerDto.fromJson(snapshot.data()!),
              toFirestore: (timerDto, options) => timerDto.toJson())
          .get();

      return data.data()!;
    } on FirebaseException catch (e) {
      logError(e.message ?? '');
    }
  }

  @override
  Future<Result<bool>> setDefaultTimer(TimerDto timerDto) async {
    try {
      await firebaseFirestore
          .collection("settings")
          .doc("default-001")
          .set(timerDto.toJson());
      return const Result.success(true);
    } on FirebaseException catch (e) {
      return Result.failure(Failure(error: "Error", message: e.message));
    }
  }
}
