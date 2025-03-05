import 'package:chief_mate/core/constants/icons.dart';
import 'package:chief_mate/core/constants/styles.dart';
import 'package:flutter/material.dart';

import 'package:svg_flutter/svg.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.iconButtonOnPressed});
final String title;
final VoidCallback iconButtonOnPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap:iconButtonOnPressed,
          child: SvgPicture.asset(AppIcons.close),
        ),
        Text(
          title,
          style: AppStyles.textStyle20,
        ),
        const SizedBox(),
      ],
    );
  }
}
