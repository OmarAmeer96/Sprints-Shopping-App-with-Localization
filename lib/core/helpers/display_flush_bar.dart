import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:sprints_shopping_app_with_localization/core/theming/styles.dart';

void displayFlushBar(
  BuildContext context, {
  required String message,
  required Color color,
  required IconData icon,
}) {
  Flushbar(
    messageText: Text(
      message,
      style: Styles.font14HeaderSection.copyWith(
        color: Colors.white,
      ),
    ),
    backgroundColor: color,
    duration: const Duration(milliseconds: 2500),
    margin: const EdgeInsets.all(8),
    borderRadius: BorderRadius.circular(12),
    animationDuration: const Duration(milliseconds: 350),
    isDismissible: true,
    shouldIconPulse: true,
    textDirection: TextDirection.rtl,
    icon: Icon(
      icon,
      color: Colors.white,
    ),
  ).show(context);
}
