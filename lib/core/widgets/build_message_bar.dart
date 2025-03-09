import 'package:chief_mate/core/constants/colors.dart';
import 'package:flutter/material.dart';
void buildMessageBar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      duration: const Duration(milliseconds: 1500), // مدة الظهور
      content: Text(
        message,
        style: TextStyle(color: AppColors.kColor2), // لون النص
      ),
      backgroundColor: AppColors.kColor5, // لون الخلفية

    ),
  );
}
