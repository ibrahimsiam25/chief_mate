import 'package:chief_mate/core/functions/conver_to_int.dart';
import 'package:chief_mate/core/widgets/custom_color_picker.dart';
import 'package:chief_mate/core/widgets/custom_view_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/styles.dart';
import '../../../../core/routes/routes_import.dart';
import '../../../auth/data/data_source/static/colors_picker_list.dart';
import '../../../auth/data/models/work_space_response_model.dart';

class EditWorkSpaceBody extends StatelessWidget {
  const EditWorkSpaceBody({super.key, required this.workSpaceModel});
final WorkSpaceResponseModel workSpaceModel; 
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(
              title: 'Редактирование',
              iconButtonOnPressed: () {
                Navigator.pop(context);
              },
            ),
            SizedBox(height: 30.h),
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
