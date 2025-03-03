import 'package:chief_mate/core/constants/icons.dart';
import 'package:chief_mate/core/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class AddNewIngredientButton extends StatelessWidget {
  const AddNewIngredientButton({super.key, this.onTap});
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.5.w),
      child: Column(
        children: [
          GestureDetector(
            onTap: onTap,
            child: ListTile(
              leading: SvgPicture.asset(
                AppIcons.addSquare,
                height: 40.h,
                width: 40.w,
              ),
              title: Text(
                'Новый ингредиент',
                style: AppStyles.textStyle16,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: const Divider(),
          )
        ],
      ),
    );
  }
}
