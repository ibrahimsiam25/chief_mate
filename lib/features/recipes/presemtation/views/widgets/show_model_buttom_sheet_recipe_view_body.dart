import 'package:chief_mate/core/constants/icons.dart';
import '../../../../../core/routes/routes.dart';
import 'package:chief_mate/features/home/presentation/views/widgets/show_model_buttom_sheet_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../tasks/presentation/views/tasks_view.dart';

class ShowModelButtomSheetRecipeViewBody extends StatelessWidget {
  const ShowModelButtomSheetRecipeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600.h,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(20.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              GoRouter.of(context).pushReplacement(TasksView.routeName);
            },
            child: const ShowModelButtomSheetItem(
              title: 'Задание',
              subtitle: 'Рецепты, которые нужно приготовить',
              leadingIcon: AppIcons.fire,
            ),
          ),
          const ShowModelButtomSheetItem(
            title: 'Ингредиент или оборудование',
            subtitle: 'Продукт, используемый в рецепте',
            leadingIcon: AppIcons.box,
          ),
          GestureDetector(
            onTap: () {
              GoRouter.of(context).pushReplacement(AppRoutes.kAddRecipeView);
            },
            child: const ShowModelButtomSheetItem(
              title: 'Рецепт',
              subtitle: 'Пошаговая инструкция',
              leadingIcon: AppIcons.book,
            ),
          ),
          SizedBox(height: 50.h)
        ],
      ),
    );
  }
}
