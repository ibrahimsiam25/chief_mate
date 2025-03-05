import 'package:chief_mate/core/constants/colors.dart';
import 'package:chief_mate/core/constants/styles.dart';
import 'package:flutter/material.dart';

class CustomChangeAvatarText extends StatelessWidget {
  const CustomChangeAvatarText({
    super.key,
    required this.textName,
  });
  final String textName;

  @override
  Widget build(BuildContext context) {
    return Text(
      textName,
      style: AppStyles.textStyle16.copyWith(
        color: AppColors.kColor6,
      ),
    );
  }
}
