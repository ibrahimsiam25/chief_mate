import 'package:chief_mate/core/constants/colors.dart';
import 'package:chief_mate/core/constants/prefs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserNameInputTextField extends StatelessWidget {
  const UserNameInputTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: AppColors.kCursorColor,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Введите ваше имя и фамилию';
        }
        return null;
      },
      onChanged: (val) {
        if (val.isEmpty) {
          // print('empty');
        } else {
          // print('knjfdjf');
        }
      },
      onFieldSubmitted: (val) {
        prefs.setString(Prefs.userName, val);
      },
      style: TextStyle(
        fontSize: 24.sp,
        fontWeight: FontWeight.w500,
        color: AppColors.kColor4,
      ),
      maxLength: 18,
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        hintText: 'Александр Иванов',
        hintStyle: TextStyle(
          fontSize: 24.sp,
          fontWeight: FontWeight.w500,
        ),
        border: InputBorder.none,
      ),
    );
  }
}
