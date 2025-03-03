import 'package:chief_mate/core/widgets/custom_button.dart';
import 'package:chief_mate/features/home/presentation/views/widgets/add_task_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddTaskView extends StatelessWidget {
  const AddTaskView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        padding: EdgeInsets.only(left: 30.w),
        child: CustomButton(
          buttonName: 'Создать',
          onTap: () {
            // GoRouter.of(context)
            //     .pushReplacement(AppRoutes.kBottomNavBarController, extra: 1);
          },
        ),
      ),
      body: const AddTaskViewBody(),
    );
  }
}
