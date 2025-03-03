import 'package:chief_mate/core/constants/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class IngredientsButton extends StatelessWidget {
  const IngredientsButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(AppIcons.shapes1),
        SizedBox(width: 10.w),
        const Text('7'),
      ],
    );
  }
}
