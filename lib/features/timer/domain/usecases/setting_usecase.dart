import 'package:elvan_admin/core/result/result.dart';

import 'package:elvan_admin/features/timer/data/repository/settings_repository_impl.dart';
import 'package:elvan_admin/features/timer/domain/repository/settings_repository.dart';
import 'package:elvan_shared/domain_models/settgins/setting.dart';
import 'package:elvan_shared/dtos/settings/setting_dto.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'setting_usecase.g.dart';

@riverpod
SettingUsecase settingUsecase(SettingUsecaseRef ref) {
  final repository = ref.read(settingsRepsitoryProvider);
  return SettingUsecase(settingRepository: repository);
}

class SettingUsecase {
  final SettingsRepository settingRepository;
  const SettingUsecase({required this.settingRepository});

  Future<Setting?> getDefaultTimer() async {
    final settingDto = await settingRepository.getDefaultTimer();
    if (settingDto == null) {
      return null;
    }
    return Setting.fromDto(settingDto);
  }

  Future<Result<bool>> setDefaultTimer(Setting setting) async {
    return settingRepository.setDefaultTimer(SettingDto.fromJson(setting.toJson()));
  }
}
