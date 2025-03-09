import '../../../../../core/routes/routes.dart';
import 'package:chief_mate/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../home/presentation/views/widgets/bottom_nav_bar_controller.dart';
import '../widgets/add_ingredient_view_body.dart';

class AddIngredientView extends StatelessWidget {
  const AddIngredientView({super.key});
static const String routeName = "/AddIngredientView";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        padding: EdgeInsets.only(left: 30.w),
        child: CustomButton(
          buttonName: 'Добавить',
          onTap: () {
            GoRouter.of(context)
                .pushReplacement(BottomNavBarController.routeName, extra: 1);
          },
        ),
      ),
      body: const AddIngredientViewBody(),
    );
  }
}
