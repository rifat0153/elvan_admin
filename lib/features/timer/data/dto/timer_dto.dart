import 'package:freezed_annotation/freezed_annotation.dart';

@JsonSerializable(nullable: false)
class TimerDto {
  TimerDto({this.takingOrder = false, this.defaultTime = 0, this.notice});

  @JsonKey(name: "takingOrder")
  bool? takingOrder;

  @JsonKey(name: "defaultTime")
  int? defaultTime;

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
