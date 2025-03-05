import 'package:chief_mate/core/constants/colors.dart';
import 'package:chief_mate/core/constants/styles.dart';
import 'package:chief_mate/features/work_space/ui/widgets/phone_number_picker_team_view.dart';
import 'package:chief_mate/features/work_space/ui/widgets/show_model_bottom_sheet_team_view_app_bar.dart';
import 'package:chief_mate/features/work_space/ui/widgets/team_view_drop_down_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShowModelBottomSheetTeamViewBody extends StatelessWidget {
  const ShowModelBottomSheetTeamViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ShowModelBottomSheetTeamViewAppBar(),
          SizedBox(height: 40.h),
          Text(
            'Номер телефона',
            style: AppStyles.textStyle20,
          ),
          SizedBox(height: 20.h),
          const PhoneNumberPickerTeamView(),
          SizedBox(height: 20.h),
          Text(
            'Роль',
            style: AppStyles.textStyle16.copyWith(
              color: AppColors.kColor3,
            ),
          ),
          SizedBox(height: 2.h),
          TeamViewDropDownMenu(
            text: 'Выберите роль',
            onTap: () {},
          ),
          SizedBox(height: 20.h),
          Text(
            'Производственный цех',
            style: AppStyles.textStyle16.copyWith(
              color: AppColors.kColor3,
            ),
          ),
          SizedBox(height: 2.h),
          TeamViewDropDownMenu(
            text: 'Выберите цех',
            onTap: () {},
          )
        ],
      ),
    );
  }
}
