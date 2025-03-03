import 'package:chief_mate/core/constants/icons.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class CustomWorkSpaceViewAppBar extends StatelessWidget {
  const CustomWorkSpaceViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(AppIcons.close),
      ],
    );
  }
}
