import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCommentListViewImage extends StatelessWidget {
  const CustomCommentListViewImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    String testImage2 =
        'https://www.tripsavvy.com/thmb/NmsG9szwvDc7VucQ9HW9u_yOjHY=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/GettyImages-860064894-5b95522b46e0fb00501c8c57.jpg';
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.r),
      child: CachedNetworkImage(
        imageUrl: testImage2,
        fit: BoxFit.cover,
        height: 280.h,
        width: 160.w,
      ),
    );
  }
}
