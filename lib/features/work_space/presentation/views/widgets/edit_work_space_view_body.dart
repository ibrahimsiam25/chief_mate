import 'package:chief_mate/core/widgets/custom_color_picker.dart';
import 'package:chief_mate/features/work_space/presentation/views/widgets/custom_edit_work_space_view_app_bar.dart';
import 'package:chief_mate/features/work_space/presentation/views/widgets/custom_edit_work_space_view_shape.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EditWorkSpaceBody extends StatelessWidget {
  const EditWorkSpaceBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomEditWorkSpaceViewAppBar(),
            SizedBox(height: 30.h),
            const CustomEditWorkSpaceViewShape(),
            SizedBox(height: 30.h),
            const Expanded(
              child: Align(
                alignment: Alignment.topCenter,
                child: CustomColorPicker(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
