import 'package:chief_mate/core/constants/icons.dart';
import 'package:chief_mate/features/home/presentation/views/add_task_view.dart';
import '../../../../../core/routes/routes.dart';
import 'package:chief_mate/features/home/presentation/views/widgets/show_model_buttom_sheet_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ShowModelButtomSheetHomeViewBody extends StatelessWidget {
  const ShowModelButtomSheetHomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400.h,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(20.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const ShowModelButtomSheetItem(
            title: 'Задание',
            subtitle: 'Рецепты, которые нужно приготовить',
            leadingIcon: AppIcons.fire,
          ),
          GestureDetector(
            onTap: () {
              GoRouter.of(context).push(AddTaskView.routeName);
            },
            child: const ShowModelButtomSheetItem(
              title: 'Задача',
              subtitle: 'Уборка, организация рабочего места',
              leadingIcon: AppIcons.task,
            ),
          ),
          const ShowModelButtomSheetItem(
            title: 'Ингредиент или оборудование',
            subtitle: 'Продукт, используемый в рецепте',
            leadingIcon: AppIcons.box,
          ),
          const ShowModelButtomSheetItem(
            title: 'Рецепт',
            subtitle: 'Пошаговая инструкция',
            leadingIcon: AppIcons.book,
          ),
          SizedBox(height: 50.h)
        ],
      ),
    );
  }
}
