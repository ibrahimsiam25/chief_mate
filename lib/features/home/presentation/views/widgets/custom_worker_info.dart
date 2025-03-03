import 'package:cached_network_image/cached_network_image.dart';
import 'package:chief_mate/core/constants/colors.dart';
import 'package:chief_mate/core/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomWorkerInfoInWorkStatusView extends StatelessWidget {
  const CustomWorkerInfoInWorkStatusView({super.key});

  @override
  Widget build(BuildContext context) {
    String testImage =
        'https://t3.ftcdn.net/jpg/06/26/08/46/360_F_626084685_2UYGfnKKcImcXmzYTbgvAYNEpHp0q1Ml.jpg';
    return ListTile(
      title: Text(
        'Александр Иванов',
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
