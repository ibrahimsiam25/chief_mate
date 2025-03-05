import 'package:cached_network_image/cached_network_image.dart';
import 'package:chief_mate/core/constants/colors.dart';
import 'package:chief_mate/core/constants/icons.dart';
import 'package:chief_mate/core/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class CustomWorkerInfoTeamView extends StatelessWidget {
  const CustomWorkerInfoTeamView({super.key});

  @override
  Widget build(BuildContext context) {
    String testImage =
        'https://img.freepik.com/free-photo/portrait-young-businesswoman-holding-eyeglasses-hand-against-gray-backdrop_23-2148029483.jpg?size=338&ext=jpg&ga=GA1.1.2008272138.1723852800&semt=ais_hybrid';
    return ListTile(
      title: Text(
        'Анна Смирнова',
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
      trailing: GestureDetector(
        onTap: () {},
        child: SvgPicture.asset(
          AppIcons.addContainer,
        ),
      ),
    );
  }
}
