import 'package:chief_mate/core/constants/colors.dart';
import 'package:chief_mate/core/constants/styles.dart';
import 'package:flutter/material.dart';

class CustomAuthSubtitleText extends StatelessWidget {
  const CustomAuthSubtitleText({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppStyles.textStyle16.copyWith(
        color: AppColors.kColor3,
      ),
    );
  }
}
