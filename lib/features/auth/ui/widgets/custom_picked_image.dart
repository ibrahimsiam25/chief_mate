import 'dart:io';

import 'package:chief_mate/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomPickedImage extends StatelessWidget {
  const CustomPickedImage({
    super.key,
    required this.image,
  });

  final File? image;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 90.r,
      backgroundColor: AppColors.kColor5,
      backgroundImage: FileImage(image!),
    );
  }
}
