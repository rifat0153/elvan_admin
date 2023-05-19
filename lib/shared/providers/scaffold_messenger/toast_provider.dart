import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:motion_toast/resources/arrays.dart';

class ToastNotifer {
  const ToastNotifer._();
  static success(BuildContext context, String message) {
    MotionToast(
      icon: Icons.done,
      animationType: AnimationType.fromBottom,
      primaryColor: Colors.green,
      title: const Text("Success"),
      description: Text(message),
      width: 300,
      height: 100,
    ).show(context);
  }

  static error(BuildContext context, String message) {
    MotionToast(
      icon: Icons.error_outline,
      animationType: AnimationType.fromBottom,
      primaryColor: Colors.red,
      title: const Text("Error"),
      description: Text(
        message,
        style: const TextStyle(color: Colors.white),
      ),
      width: 300,
      height: 100,
    ).show(context);
  }

  static common({required BuildContext context, required String message, required String title, required IconData iconData, required Color color}) {
    MotionToast(
      icon: iconData,
      animationType: AnimationType.fromBottom,
      primaryColor: color,
      title: Text(title),
      description: Text(
        message,
        style: const TextStyle(color: Colors.white),
      ),
      width: 300,
      height: 100,
    ).show(context);
  }
}
