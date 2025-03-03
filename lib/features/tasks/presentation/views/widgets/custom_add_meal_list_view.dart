import 'package:chief_mate/features/tasks/presentation/views/widgets/custom_add_meal_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAddMealListView extends StatelessWidget {
  const CustomAddMealListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 2,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(bottom: 20.h),
          child: const CustomAddMealItem(),
        );
      },
    );
  }
}
