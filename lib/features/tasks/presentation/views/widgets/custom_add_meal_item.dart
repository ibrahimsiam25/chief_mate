import 'package:cached_network_image/cached_network_image.dart';
import 'package:chief_mate/core/constants/colors.dart';
import 'package:chief_mate/core/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAddMealItem extends StatefulWidget {
  const CustomAddMealItem({super.key});

  @override
  State<CustomAddMealItem> createState() => _CustomAddMealItemState();
}

class _CustomAddMealItemState extends State<CustomAddMealItem> {
  int selectedNum = 0;

  increment() {
    selectedNum++;
  }

  decrement() {
    selectedNum--;
  }

  @override
  Widget build(BuildContext context) {
    String testImage =
        'https://media.cnn.com/api/v1/images/stellar/prod/220526171611-11-classic-french-dishes-ratatouille.jpg?c=original';
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(4.r),
              child: CachedNetworkImage(
                fit: BoxFit.cover,
                imageUrl: testImage,
                height: 40.h,
                width: 40.w,
              ),
            ),
            SizedBox(width: 12.w),
            Expanded(
              child: Text(
                'Крем-суп из тыквы с зеленью',
                style: AppStyles.textStyle16,
              ),
            ),
            SizedBox(width: 10.w),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 10.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(4.r),
                ),
                color: AppColors.kColor5,
              ),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      if (selectedNum > 0) {
                        setState(() {
                          selectedNum--;
                        });
                      }
                    },
                    child: const Icon(Icons.remove),
                  ),
                  SizedBox(width: 20.w),
                  Text(
                    '$selectedNum',
                    style: AppStyles.textStyle16,
                  ),
                  SizedBox(width: 20.w),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedNum++;
                      });
                    },
                    child: const Icon(Icons.add),
                  ),
                ],
              ),
            )
          ],
        ),
        SizedBox(height: 8.h),
        const Divider(),
      ],
    );
  }
}
