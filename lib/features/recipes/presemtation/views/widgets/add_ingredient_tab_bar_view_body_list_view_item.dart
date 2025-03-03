import 'package:chief_mate/core/constants/colors.dart';
import 'package:chief_mate/core/constants/icons.dart';
import 'package:chief_mate/core/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class AddIngredientTabBarViewBodyListViewItem extends StatelessWidget {
  const AddIngredientTabBarViewBodyListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(
            'Ингредиент 1',
            style: AppStyles.textStyle16,
          ),
          subtitle: Text(
            '',
            style: AppStyles.textStyle16.copyWith(
              color: AppColors.kColor3,
            ),
          ),
          leading: SvgPicture.asset(
            AppIcons.item,
            height: 40.h,
            width: 40.w,
          ),
          trailing: SvgPicture.asset(
            AppIcons.addContainer2,
            height: 32.h,
            width: 32.w,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: const Divider(),
        ),
      ],
    );
  }
}
