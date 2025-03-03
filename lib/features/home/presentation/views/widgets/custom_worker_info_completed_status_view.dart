import 'package:cached_network_image/cached_network_image.dart';
import 'package:chief_mate/core/constants/colors.dart';
import 'package:chief_mate/core/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomWorkerInfoCompletedStatusView extends StatelessWidget {
  const CustomWorkerInfoCompletedStatusView({super.key});

  @override
  Widget build(BuildContext context) {
    String testImage =
        'https://as1.ftcdn.net/v2/jpg/02/89/29/00/1000_F_289290014_cwspGdy9PUacA2Civt3MAumS55cgCazf.jpg';
    return ListTile(
      title: Text(
        'Анастасия Ивановна',
        style: AppStyles.textStyle16.copyWith(
          color: AppColors.kColor4,
        ),
      ),
      subtitle: Text(
        'Шеф-повар • Название цеха',
        style: AppStyles.textStyle16.copyWith(
          color: AppColors.kColor3,
          overflow: TextOverflow.ellipsis,
          fontSize: 14.sp,
        ),
      ),
      leading: CircleAvatar(
        backgroundImage: CachedNetworkImageProvider(
          testImage,
        ),
      ),
    );
  }
}
