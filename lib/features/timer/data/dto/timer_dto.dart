import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';


part 'timer_dto.g.dart';

@HiveType(typeId: 1, adapterName: "TimerDtoAdapter")
@JsonSerializable(nullable: false)

class TimerDto {
  TimerDto({this.takingOrder = false, this.defaultTime = 0, this.notice});

  @HiveField(0)
  @JsonKey(name: "takingOrder")
  bool? takingOrder;

  @HiveField(1)
  @JsonKey(name: "defaultTime")
  int? defaultTime;

  @HiveField(2)
  @JsonKey(name: "notice")
  String? notice;

  TimerDto.fromJson(Map<String, dynamic> json) {
    takingOrder = json['takingOrder'];
    defaultTime = json['defaultTime'];
    notice = json['notice'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['takingOrder'] = takingOrder;
    data['defaultTime'] = defaultTime;
    data['notice'] = notice;
    return data;
  }
}
