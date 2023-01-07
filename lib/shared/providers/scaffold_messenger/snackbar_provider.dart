import 'package:elvan_admin/shared/providers/scaffold_messenger/scaffold_messenger_key_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final snackbarNotifierProvider = NotifierProvider<SnackbarNotifier, void>(
  SnackbarNotifier.new,
);

class SnackbarNotifier extends Notifier<void> {
  late final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey;
  @override
  build() {
    scaffoldMessengerKey = ref.read(scaffoldMessengerKeyProvider);
  }

  bool showSnackbar(SnackBar snackBar) {
    scaffoldMessengerKey.currentState?.showSnackBar(
      snackBar,
    );
    return true;
  }

  bool showSnackbarWithMessage(String message) {
    showSnackbar(
      SnackBar(
        content: Text(message),
      ),
    );
    return true;
  }

  bool showSnackbarWithAction(
    String message, {
    required String actionLabel,
    required VoidCallback onAction,
  }) {
    showSnackbar(
      SnackBar(
        content: Text(message),
        action: SnackBarAction(
          label: actionLabel,
          onPressed: onAction,
        ),
      ),
    );
    return true;
  }

  bool removeSnakbar() {
    scaffoldMessengerKey.currentState?.hideCurrentSnackBar();
    return true;
  }
}
