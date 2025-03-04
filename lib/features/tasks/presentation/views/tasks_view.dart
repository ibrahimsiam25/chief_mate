import 'package:chief_mate/core/widgets/custom_button.dart';
import 'package:chief_mate/features/tasks/presentation/views/widgets/tasks_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TasksView extends StatelessWidget {
  const TasksView({super.key});
static const routeName = '/tasksView';
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
      body: const TasksViewBody(),
    );
  }
}
