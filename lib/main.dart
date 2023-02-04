import 'package:elvan_admin/app/app.dart';
import 'package:elvan_admin/core/logger/riverpod_state_logger.dart';
import 'package:elvan_admin/features/order/domain/models/order_timer_dto.dart';
import 'package:elvan_admin/features/timer/data/dto/timer_dto.dart';
import 'package:elvan_admin/shared/constants/app_utils.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter<OrderTimerDto>(OrderTimerDtoAdapter());
  Hive.registerAdapter<TimerDto>(TimerDtoAdapter());
  await Hive.openBox(AppUtils.timerBox);
  await Hive.openBox(AppUtils.defaultBox);

   await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    const ProviderScope(
      observers: [StateLogger()],
      child: App()
    ),
  );
}
