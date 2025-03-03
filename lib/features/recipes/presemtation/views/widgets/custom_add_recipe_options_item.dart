import 'package:chief_mate/core/constants/icons.dart';
import 'package:chief_mate/core/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class CustomAddRecipeOptionsItem extends StatelessWidget {
  const CustomAddRecipeOptionsItem({super.key, required this.text, this.onTap});
  final String text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: AppStyles.textStyle20,
        ),
        GestureDetector(
          onTap: onTap,
          child: SvgPicture.asset(AppIcons.arrowDownContainer),
        ),
      ],
    );
  }
}
