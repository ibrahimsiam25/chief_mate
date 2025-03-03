import 'package:avatar_stack/avatar_stack.dart';
import 'package:avatar_stack/positions.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:chief_mate/core/constants/colors.dart';
import 'package:chief_mate/core/constants/icons.dart';

import 'package:chief_mate/core/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:svg_flutter/svg.dart';

import '../../../../../core/routes/routes.dart';

class CustomAvatarProfile extends StatelessWidget {
  const CustomAvatarProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List avatars = [
      'https://media.istockphoto.com/id/492529287/photo/portrait-of-happy-laughing-man.jpg?s=612x612&w=0&k=20&c=0xQcd69Bf-mWoJYgjxBSPg7FHS57nOfYpZaZlYDVKRE=',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTG5CPz89vwuDB4H5EsXhkpKz0_koS-0HK0Yg&s',
      'https://img.freepik.com/free-photo/young-beautiful-woman-pink-warm-sweater-natural-look-smiling-portrait-isolated-long-hair_285396-896.jpg',
      'https://thumbs.dreamstime.com/b/portrait-handsome-man-smiling-camera-park-33857959.jpg',
      'https://media.istockphoto.com/id/492529287/photo/portrait-of-happy-laughing-man.jpg?s=612x612&w=0&k=20&c=0xQcd69Bf-mWoJYgjxBSPg7FHS57nOfYpZaZlYDVKRE=',
      'https://media.istockphoto.com/id/492529287/photo/portrait-of-happy-laughing-man.jpg?s=612x612&w=0&k=20&c=0xQcd69Bf-mWoJYgjxBSPg7FHS57nOfYpZaZlYDVKRE=',
      'https://media.istockphoto.com/id/492529287/photo/portrait-of-happy-laughing-man.jpg?s=612x612&w=0&k=20&c=0xQcd69Bf-mWoJYgjxBSPg7FHS57nOfYpZaZlYDVKRE=',
      'https://media.istockphoto.com/id/492529287/photo/portrait-of-happy-laughing-man.jpg?s=612x612&w=0&k=20&c=0xQcd69Bf-mWoJYgjxBSPg7FHS57nOfYpZaZlYDVKRE=',
      'https://media.istockphoto.com/id/492529287/photo/portrait-of-happy-laughing-man.jpg?s=612x612&w=0&k=20&c=0xQcd69Bf-mWoJYgjxBSPg7FHS57nOfYpZaZlYDVKRE=',
      'https://media.istockphoto.com/id/492529287/photo/portrait-of-happy-laughing-man.jpg?s=612x612&w=0&k=20&c=0xQcd69Bf-mWoJYgjxBSPg7FHS57nOfYpZaZlYDVKRE=',
    ];

    return SizedBox(
      height: 50.h,
      child: Stack(
        children: [
          Positioned(
            left: 40.w,
            child: AvatarStack(
              infoWidgetBuilder: (surplus) {
                return Container(
                  width: 50.h,
                  height: 50.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.kColor5,
                    border: Border.all(
                      color: AppColors.kColor1,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      '+$surplus',
                      style: AppStyles.textStyle20.copyWith(
                        color: AppColors.kColor3,
                      ),
                    ),
                  ),
                );
              },
              settings: RestrictedAmountPositions(
                laying: StackLaying.first,
                maxAmountItems: 5,
                infoIndent: 0,
              ),
              borderColor: Colors.transparent,
              width: MediaQuery.of(context).size.width * 0.6,
              height: 50.h,
              avatars: [
                for (var n = 0; n < avatars.length; n++)
                  CachedNetworkImageProvider(avatars[n])
              ],
            ),
          ),
          Positioned(
            left: 0,
            child: Container(
              width: 52.w,
              height: 52.h,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.kColor2,
                border: Border.all(
                  color: AppColors.kColor1,
                ),
              ),
              child: IconButton(
                icon: SvgPicture.asset(AppIcons.add),
                onPressed: () {
                  GoRouter.of(context).push(AppRoutes.kAddStatusView);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
