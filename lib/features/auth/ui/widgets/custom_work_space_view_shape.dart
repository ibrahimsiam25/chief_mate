import 'package:chief_mate/core/constants/icons.dart';
import 'package:chief_mate/core/constants/styles.dart';
import 'package:chief_mate/core/routes/routes_import.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';
import '../../../../core/functions/conver_to_int.dart';
class CustomWorkSpaceViewShape extends StatelessWidget {
  const CustomWorkSpaceViewShape({super.key, required this.workSpaceModel});
final WorkSpaceResponseModel workSpaceModel;
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
            color: Color(convertToInt(workSpaceModel.data!.colorCode)),
            borderRadius: BorderRadius.circular(16.r),
          ),
          child: Text(
            "${workSpaceModel.data!.name}",
            style: AppStyles.textStyle32,
          ),
        ),
        Positioned(
          right: 10.w,
          top: 10.w,
          child: GestureDetector(
            onTap: () {
              GoRouter.of(context).push(EditWorkSpaceView.routeName,
                  extra: workSpaceModel
              
              );
            },
            child: SvgPicture.asset(
              AppIcons.editButton),
          ),
        )
      ],
    );
  }
}
