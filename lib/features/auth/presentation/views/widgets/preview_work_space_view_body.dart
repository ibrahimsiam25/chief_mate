import 'package:chief_mate/core/constants/colors.dart';
import 'package:chief_mate/core/constants/icons.dart';
import 'package:chief_mate/core/constants/app_constants.dart';
import 'package:chief_mate/core/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:svg_flutter/svg.dart';

import '../../../../../core/routes/routes.dart';
import '../../../data/data_source/static/colors_picker_list.dart';

class PreviewWorkSpaceViewBody extends StatelessWidget {
  const PreviewWorkSpaceViewBody(
      {super.key, required this.workSpaceName, required this.workSpaceColor});
  final String workSpaceName;
  final int workSpaceColor;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(AppIcons.done),
              SizedBox(height: 12.h),
              Text(
                'Готово!',
                style: AppStyles.textStyle20,
              ),
              SizedBox(height: 20.h),
              GestureDetector(
                onTap: () {
                  GoRouter.of(context)
                      .pushReplacement(AppRoutes.kWorkSpaceView);
                },
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
                  alignment: Alignment.bottomLeft,
                  height: 160.h,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: colorsPickerList[workSpaceColor],
                    borderRadius: BorderRadius.circular(16.r),
                  ),
                  child: Text(
                    workSpaceName,
                    style: AppStyles.textStyle32,
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Text(
                  'Ваше рабочее пространство успешно создано',
                  textAlign: TextAlign.center,
                  style: AppStyles.textStyle16.copyWith(
                    color: AppColors.kColor3,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
