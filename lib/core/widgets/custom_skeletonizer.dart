import 'package:chief_mate/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CustomSkeletonizer extends StatelessWidget {
  const CustomSkeletonizer({super.key, required this.child, required this.isLoading});

  final Widget child;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    if (!isLoading) return child;

    return Shimmer.fromColors(
      baseColor: AppColors.kColor11,
      highlightColor:AppColors.kColor12,
      child: child,
    );
  }
}
