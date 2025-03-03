import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomFoodItemPhoto extends StatelessWidget {
  const CustomFoodItemPhoto({super.key});

  @override
  Widget build(BuildContext context) {
    String testImage =
        'https://www.2foodtrippers.com/wp-content/uploads/2020/01/Croissants-at-French-Bastards-in-Paris.jpg';

    return SizedBox(
      height: 250.h,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16.r),
              topRight: Radius.circular(16.r),
            ),
            child: CachedNetworkImage(
              imageUrl: testImage,
              fit: BoxFit.fill,
              width: double.infinity,
              height: double.infinity,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 80.h, // Height of the shadow effect
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.black.withOpacity(0.6),
                    Colors.transparent,
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
