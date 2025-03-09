import 'package:chief_mate/features/ingredients/ui/widgets/add_comment_text_field.dart';
import 'package:chief_mate/features/ingredients/ui/widgets/custom_comment_item.dart';
import 'package:chief_mate/features/ingredients/ui/widgets/custom_profile_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IngredientDetailsViewTabBarViewBody extends StatelessWidget {
  const IngredientDetailsViewTabBarViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    String testImage =
        'https://media.istockphoto.com/id/492529287/photo/portrait-of-happy-laughing-man.jpg?s=612x612&w=0&k=20&c=0xQcd69Bf-mWoJYgjxBSPg7FHS57nOfYpZaZlYDVKRE=';
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              children: [
                CustomProfileImage(testImage: testImage),
                SizedBox(width: 12.w),
                const Expanded(
                  child: AddCommentTextField(),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 6,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: 20,
            itemBuilder: (context, index) => Padding(
              padding: EdgeInsets.only(bottom: 20.h),
              child: const CustomCommentItem(),
            ),
          ),
        )
      ],
    );
  }
}
