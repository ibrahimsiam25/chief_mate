import 'package:chief_mate/core/constants/colors.dart';
import 'package:chief_mate/core/constants/icons.dart';
import 'package:chief_mate/core/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';
import '../../../../core/functions/conver_to_int.dart';
import '../../../../core/routes/routes_import.dart';
import '../../data/data_source/static/colors_picker_list.dart';
import '../../data/models/work_space_response_model.dart';

class PreviewWorkSpaceViewBody extends StatefulWidget {
  const PreviewWorkSpaceViewBody({
    super.key,
    required this.workSpaceModel,
  });
  final WorkSpaceResponseModel workSpaceModel;

  @override
  State<PreviewWorkSpaceViewBody> createState() => _PreviewWorkSpaceViewBodyState();
}

class _PreviewWorkSpaceViewBodyState extends State<PreviewWorkSpaceViewBody> {
    @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      if (mounted) {
        GoRouter.of(context).go(
          WorkSpaceView.routeName,
          extra: widget.workSpaceModel,
        );
      }
    });
  }

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
                  GoRouter.of(context).go(WorkSpaceView.routeName,
                      extra: widget.workSpaceModel);
                },
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
                  alignment: Alignment.bottomLeft,
                  height: 160.h,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color:
                        Color(convertToInt(widget.workSpaceModel.data!.colorCode)),
                    borderRadius: BorderRadius.circular(16.r),
                  ),
                  child: Text(
                    "${widget.workSpaceModel.data!.name}",
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
