import '../../../../../core/routes/routes.dart';
import 'package:chief_mate/core/widgets/custom_button.dart';
import 'package:chief_mate/features/home/presentation/views/widgets/add_to_work_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class AddToWorkView extends StatelessWidget {
  const AddToWorkView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        padding: EdgeInsets.only(left: 30.w),
        child: CustomButton(
          buttonName: 'Начать готовить',
          onTap: () {
            GoRouter.of(context).push(AppRoutes.kStartCookingView);
          },
        ),
      ),
      body: const AddToWorkViewBody(),
    );
  }
}
