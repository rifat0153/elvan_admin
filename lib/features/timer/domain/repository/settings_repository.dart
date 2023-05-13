import 'package:elvan_admin/core/result/result.dart';
import 'package:elvan_shared/domain_models/settgins/setting.dart';
import 'package:elvan_shared/dtos/settings/setting_dto.dart';

abstract class SettingsRepository {
  Future<Result<bool>> setDefaultTimer(SettingDto setting);
 Future<SettingDto?> getDefaultTimer();

}
