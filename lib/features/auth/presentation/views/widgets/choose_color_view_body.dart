import 'package:chief_mate/features/auth/presentation/views/widgets/add_phone_number_view_app_bar.dart';
import 'package:chief_mate/features/auth/presentation/views/widgets/choose_color_view_header.dart';
import 'package:chief_mate/features/auth/presentation/views/widgets/custom_color_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChooseColorViewBody extends StatelessWidget {
  const ChooseColorViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAuthAppBar(),
              SizedBox(height: 40.h),
              Padding(
                padding: EdgeInsets.only(left: 20.w, right: 20.w),
                child: const ChooseColorViewHeader(),
              ),
              SizedBox(height: 40.h),
              Align(
                alignment: Alignment.topCenter,
                child: CustomColorPicker(),
              )
                  , SizedBox(height: 40.h),
            ],
          ),
        ),
      ),
    );
  }
}
