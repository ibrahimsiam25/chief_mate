import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomProfileImage extends StatelessWidget {
  const CustomProfileImage({
    super.key,
    required this.testImage,
  });

  final String testImage;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: CachedNetworkImageProvider(testImage),
      radius: 22,
    );
  }
}
