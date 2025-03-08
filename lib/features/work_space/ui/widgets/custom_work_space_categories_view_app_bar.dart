import 'package:chief_mate/core/constants/icons.dart';
import 'package:chief_mate/core/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

import '../../../../core/routes/routes_import.dart';

class CustomWorkSpaceCategoriesViewAppBar extends StatelessWidget {
  const CustomWorkSpaceCategoriesViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
       //     GoRouter.of(context).pop();
          },
          child: SvgPicture.asset(
            AppIcons.eye,
            height: 20.h,
            width: 20.w,
          ),
        ),
        Text(
          'Рабочие простанства',
          textAlign: TextAlign.center,
          style: AppStyles.textStyle20,
        ),
        IconButton(
          onPressed: () {
               GoRouter.of(context).push(WorkSpaceNameView.routeName);
          },
          icon: SvgPicture.asset(
            AppIcons.add,
            color: const Color(0xffFFFFFF),
            height: 17.h,
            width: 17.w,
          ),
        ),
      ],
    );
  }
}
