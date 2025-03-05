import 'package:chief_mate/core/constants/styles.dart';
import 'package:flutter/material.dart';

class CustomAuthHeaderText extends StatelessWidget {
  const CustomAuthHeaderText({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppStyles.textStyle32,
    );
  }
}
