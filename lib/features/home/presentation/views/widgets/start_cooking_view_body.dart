import 'package:chief_mate/core/constants/colors.dart';
import 'package:chief_mate/core/constants/icons.dart';
import 'package:chief_mate/core/constants/styles.dart';
import 'package:chief_mate/features/home/presentation/views/ingredients_view_botom_sheet.dart';
import 'package:chief_mate/features/home/presentation/views/widgets/ingredients_button.dart';
import 'package:chief_mate/features/home/presentation/views/widgets/start_cooking_view_app_bar.dart';
import 'package:chief_mate/features/home/presentation/views/widgets/start_cooking_view_photo.dart';
import 'package:chief_mate/features/home/presentation/views/widgets/timer_body.dart';
import 'package:chief_mate/features/recipes/presemtation/views/widgets/add_new_step_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class StartCookingViewBody extends StatelessWidget {
  const StartCookingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        child: ListView(
          children: [
            const StartCookingViewAppBar(),
            SizedBox(height: 20.h),
            const StartCookingViewPhoto(),
            SizedBox(height: 20.h),
            RichText(
              text: TextSpan(
                text:
                    'Вымесить однородное, эластичное тесто. Дать ему постоять в холодильнике ',
                style: AppStyles.textStyle20,
                children: <TextSpan>[
                  TextSpan(
                    text: '30 минут',
                    style: AppStyles.textStyle20.copyWith(
                      color: AppColors.kColor10,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40.h),
            Row(
              children: [
                AddNewStepButton(
                  onTap: () {
                    showModalBottomSheet(
                      useSafeArea: true,
                      context: context,
                      builder: (context) {
                        return const TimerBody();
                      },
                    );
                  },
                  icon: AppIcons.timer,
                  iconHeight: 15.h,
                  text: '30 мин',
                ),
                SizedBox(width: 16.w),
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                      isScrollControlled: true,
                      useSafeArea: true,
                      context: context,
                      builder: (context) {
                        return const IngredientsViewBotomSheet();
                      },
                    );
                  },
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
                    decoration: BoxDecoration(
                      color: AppColors.kColor5,
                      borderRadius: BorderRadius.all(
                        Radius.circular(30.r),
                      ),
                    ),
                    child: const IngredientsButton(),
                  ),
                ),
                SizedBox(width: 16.w),
                SvgPicture.asset(AppIcons.addCommentContainer),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
