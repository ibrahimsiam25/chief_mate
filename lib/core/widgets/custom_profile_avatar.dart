import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomProfileAvatar extends StatelessWidget {
  const CustomProfileAvatar({super.key, this.imagePath});
  final String? imagePath;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 18.r,
      backgroundImage: CachedNetworkImageProvider(
        imagePath ?? '',
      ),
    );
  }
}
