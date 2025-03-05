import 'package:chief_mate/core/constants/colors.dart';
import 'package:chief_mate/core/constants/prefs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserNameInputTextField extends StatelessWidget {
  final void Function(String?)? onSaved;

  const UserNameInputTextField({super.key, this.onSaved});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: AppColors.kCursorColor,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Введите ваше имя и фамилию';
        }
        return null;
      },
      onSaved: onSaved, // Pass the onSaved callback to save the value
      onChanged: (val) {
        if (val.isEmpty) {
          // Optional: Handle empty input
        } else {
          // Optional: Handle non-empty input
        }
      },
      onFieldSubmitted: (val) {
        prefs.setString(Prefs.userName, val); // Save to preferences if needed
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
