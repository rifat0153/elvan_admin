import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:elvan_admin/core/failure/failure.dart';
import 'package:elvan_admin/core/firebase/firebase_providers.dart';
import 'package:elvan_admin/core/logger/colored_print_log.dart';
import 'package:elvan_admin/core/result/result.dart';
import 'package:elvan_admin/features/timer/domain/repository/settings_repository.dart';
import 'package:elvan_shared/dtos/settings/setting_dto.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final settingsRepsitoryProvider = Provider<SettingsRepository>(((ref) {
  final firestore = ref.watch(firebaseFirestoreProvider);
  return SettingsRepositoryImpl(firebaseFirestore: firestore);
}));

class SettingsRepositoryImpl implements SettingsRepository {
  final FirebaseFirestore firebaseFirestore;

  const SettingsRepositoryImpl({required this.firebaseFirestore});

  @override
  Future<SettingDto?> getDefaultTimer() async {
    try {
      DocumentSnapshot<SettingDto> data = await firebaseFirestore
          .collection("settings")
          .doc("default-001")
          .withConverter(fromFirestore: (snapshot, options) => SettingDto.fromJson(snapshot.data()!), toFirestore: (settingDto, options) => settingDto.toJson())
          .get();

      return data.data()!;
    } on FirebaseException catch (e) {
      logError(e.message ?? '');
    }
    return null;
  }

  @override
  Future<Result<bool>> setDefaultTimer(SettingDto setting) async {
    try {
      await firebaseFirestore.collection("settings").doc("default-001").set(setting.toJson());
      return const Result.success(true);
    } on FirebaseException catch (e) {
      return Result.failure(Failure(error: "Error", message: e.message));
    }
  }
}
