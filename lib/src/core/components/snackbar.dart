import 'package:advanced_navigation_manager/src/core/theme/theme.dart';
import 'package:flutter/material.dart';

class SnackbarManager {
  static void showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: AppColors.grannySmithApple,
        content: Text(message),
        duration: const Duration(seconds: 2),
      ),
    );
  }
}