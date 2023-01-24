import 'package:freezed_annotation/freezed_annotation.dart';

part 'timer_dto.freezed.dart';
part 'timer_dto.g.dart';
@freezed
class TimerDto with _$TimerDto {
  const factory TimerDto(
      {@Default(false) bool takingOrder,
      @Default(0) int defaultTime,
      String? notice}) = _TimerDto;

  factory TimerDto.fromJson(Map<String, dynamic> json) =>
      _$TimerDtoFromJson(json);
}
