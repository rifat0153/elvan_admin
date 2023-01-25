import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'order_timer_dto.g.dart';

@HiveType(typeId: 0)
@JsonSerializable(nullable: false)
class OrderTimerDto {
   OrderTimerDto({required this.orderId,required this.time});

  @HiveField(0)
  @JsonKey(name:"order_id")
  String? orderId;

  @HiveField(1)
  @JsonKey(name:"time")
  String? time;
}
