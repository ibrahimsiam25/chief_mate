import 'dart:io';

import 'package:chief_mate/core/constants/colors.dart';
import 'package:chief_mate/core/constants/images.dart';
import 'package:chief_mate/core/constants/prefs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomProfileViewAvatar extends StatelessWidget {
  const CustomProfileViewAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: AppColors.kColor5,
      radius: 40.r,
      backgroundImage: prefs.getString(Prefs.avatarImagePath) != null
          ? FileImage(
              File(prefs.getString(Prefs.avatarImagePath)!),
            )
          : AssetImage(AppImages.avatar),
    );
  }
}
