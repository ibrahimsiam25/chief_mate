import 'package:chief_mate/core/constants/colors.dart';
import 'package:chief_mate/core/constants/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class RestaurantNameTextField extends StatelessWidget {
  const RestaurantNameTextField({super.key, this.onSaved});

  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: AppColors.kCursorColor,
      validator: (value) => value!.isEmpty ? 'Напишите название рабочего пространства' : null,
      onSaved: onSaved,
      style: TextStyle(
        fontSize: 24.sp,
        fontWeight: FontWeight.w500,
        color: AppColors.kColor4,
      ),
      maxLength: 18,
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        hintText: 'Мой ресторан',
        hintStyle: TextStyle(
          fontSize: 24.sp,
          fontWeight: FontWeight.w500,
        ),
        border: InputBorder.none,
      ),
    );
  }
}
