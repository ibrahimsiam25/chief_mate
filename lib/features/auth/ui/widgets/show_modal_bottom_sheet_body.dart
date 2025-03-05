import 'package:chief_mate/core/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShowModalBottomSheetBody extends StatelessWidget {
  const ShowModalBottomSheetBody(
      {super.key,
      required this.onPressedCamera,
      required this.onPressedGallery});
  final void Function() onPressedCamera;
  final void Function() onPressedGallery;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 50.w, vertical: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              IconButton(
                onPressed: onPressedCamera,
                icon: const Icon(
                  Icons.photo_camera,
                  size: 50,
                ),
              ),
              Text(
                'Camera',
                style: AppStyles.textStyle16,
              ),
            ],
          ),
          Column(
            children: [
              IconButton(
                onPressed: onPressedGallery,
                icon: const Icon(
                  Icons.collections,
                  size: 50,
                ),
              ),
              Text(
                'Gallery',
                style: AppStyles.textStyle16,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
