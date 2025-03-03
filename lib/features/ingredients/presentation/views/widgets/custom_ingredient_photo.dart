import 'package:cached_network_image/cached_network_image.dart';
import 'package:chief_mate/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomIngredientPhoto extends StatelessWidget {
  const CustomIngredientPhoto({super.key});

  @override
  Widget build(BuildContext context) {
    String testImage =
        'https://insanelygoodrecipes.com/wp-content/uploads/2020/12/Homemade-Borsch-Cabbage-Soup.png';
    return Container(
        height: 250.h,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                AppColors.kColor4,
                AppColors.kColor1,
              ]),
          color: AppColors.kColor4,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16.r),
            topRight: Radius.circular(16.r),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50.r),
            child: CachedNetworkImage(
              imageUrl: testImage,
            ),
          ),
        ));
  }
}
