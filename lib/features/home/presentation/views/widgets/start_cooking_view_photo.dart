import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StartCookingViewPhoto extends StatelessWidget {
  const StartCookingViewPhoto({super.key});

  @override
  Widget build(BuildContext context) {
    String testImage =
        'https://www.tipntrips.com/wp-content/uploads/2018/01/Famous-French-foods-you-must-try-at-least-once-in-France-Croissant.jpg';
    return SizedBox(
      height: MediaQuery.of(context).size.height / 1.9,
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
