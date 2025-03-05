import 'package:chief_mate/core/constants/icons.dart';
import 'package:chief_mate/core/constants/app_constants.dart';
import 'package:chief_mate/core/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:svg_flutter/svg.dart';

import '../../../../../core/routes/routes.dart';

class CustomWorkSpaceViewShape extends StatelessWidget {
  const CustomWorkSpaceViewShape({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          alignment: Alignment.bottomLeft,
          height: 160.h,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Color(
               // prefs.getInt(Prefs.workSpaceColor)?.toInt() ?? 
                0xffFF2D5E),
            borderRadius: BorderRadius.circular(16.r),
          ),
          child: Text(
            'Ресторан',
           // prefs.getString(Prefs.workSpaceName).toString(),
            style: AppStyles.textStyle32,
          ),
        ),
        Positioned(
          right: 10.w,
          top: 10.w,
          child: GestureDetector(
            onTap: () {
              GoRouter.of(context).push(AppRoutes.kEditWorkSpace);
            },
            child: SvgPicture.asset(AppIcons.editButton),
          ),
        )
      ],
    );
  }
}
