import 'package:chief_mate/core/constants/icons.dart';
import 'package:chief_mate/core/constants/styles.dart';
import 'package:chief_mate/features/auth/data/models/create_work_space_request_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:svg_flutter/svg.dart';

import '../../../../../core/functions/conver_to_int.dart';
import '../../../../../core/routes/routes.dart';
import '../../../data/data_source/static/colors_picker_list.dart';

class CustomWorkSpaceViewShape extends StatelessWidget {
  const CustomWorkSpaceViewShape({super.key, required this.workSpaceModel});
final CreateWorkSpaceRequestModel workSpaceModel;
  @override
  Widget build(BuildContext context) {
 int colorIndex = convertToInt(workSpaceModel.colorId);
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          alignment: Alignment.bottomLeft,
          height: 160.h,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: colorsPickerList[colorIndex],
            borderRadius: BorderRadius.circular(16.r),
          ),
          child: Text(
            "${workSpaceModel.name}",
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
