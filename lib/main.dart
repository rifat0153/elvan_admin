import 'package:elvan_admin/app/app.dart';
import 'package:elvan_admin/core/logger/riverpod_state_logger.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    const ProviderScope(
      observers: [StateLogger()],
      child: App()
    ),
  );
}
