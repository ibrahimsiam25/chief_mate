import 'package:chief_mate/core/constants/colors.dart';
import 'package:chief_mate/core/constants/icons.dart';
import 'package:chief_mate/core/constants/styles.dart';
import 'package:chief_mate/features/ingredients/presentation/views/widgets/custom_comment_list_view_image.dart';
import 'package:chief_mate/features/ingredients/presentation/views/widgets/custom_profile_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class CustomCommentItem extends StatelessWidget {
  const CustomCommentItem({super.key});

  @override
  Widget build(BuildContext context) {
    String testImage =
        'https://media.istockphoto.com/id/492529287/photo/portrait-of-happy-laughing-man.jpg?s=612x612&w=0&k=20&c=0xQcd69Bf-mWoJYgjxBSPg7FHS57nOfYpZaZlYDVKRE=';

    return Padding(
      padding: EdgeInsets.only(left: 20.w),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomProfileImage(testImage: testImage),
          SizedBox(width: 12.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 20.w),
                  child: Row(
                    children: [
                      Text(
                        'Александр Иванов',
                        maxLines: null,
                        overflow: TextOverflow.visible,
                        style: AppStyles.textStyle16,
                      ),
                      SizedBox(width: 8.w),
                      Text(
                        '10:30',
                        style: AppStyles.textStyle16.copyWith(
                          color: AppColors.kColor6,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 4.h),
                Padding(
                  padding: EdgeInsets.only(right: 20.w),
                  child: Text(
                    'Я добавил в начинку круассанов свежие ягоды, и они стали еще более восхитительными! Этот рецепт легко адаптировать под любой вкус.',
                    style: AppStyles.textStyle16.copyWith(
                      color: AppColors.kColor6,
                    ),
                    maxLines: null,
                    overflow: TextOverflow.visible,
                  ),
                ),
                SizedBox(height: 8.h),
                SizedBox(
                  height: 280.h,
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) => Padding(
                      padding: EdgeInsets.only(right: 8.w),
                      child: const CustomCommentListViewImage(),
                    ),
                  ),
                ),
                SizedBox(height: 8.h),
                Padding(
                  padding: EdgeInsets.only(right: 20.w),
                  child: Row(
                    children: [
                      SvgPicture.asset(AppIcons.comment),
                      SizedBox(width: 8.w),
                      Text(
                        'Ответить',
                        style: AppStyles.textStyle16,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
