import 'package:cached_network_image/cached_network_image.dart';
import 'package:chief_mate/core/constants/colors.dart';
import 'package:chief_mate/core/constants/styles.dart';
import 'package:chief_mate/core/widgets/custom_add_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomProfileWorkerInfo extends StatelessWidget {
  const CustomProfileWorkerInfo({super.key});

  @override
  Widget build(BuildContext context) {
    String testImage =
        'https://img.freepik.com/free-photo/young-beautiful-woman-pink-warm-sweater-natural-look-smiling-portrait-isolated-long-hair_285396-896.jpg';
    return Column(
      children: [
        ListTile(
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
          trailing: CustomAddButton(
            padding: const EdgeInsets.all(10),
            height: 15.h,
            onTap: () {},
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: const Divider(),
        )
      ],
    );
  }
}
