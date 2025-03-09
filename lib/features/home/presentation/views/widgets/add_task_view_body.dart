import 'package:chief_mate/core/constants/colors.dart';
import 'package:chief_mate/core/constants/styles.dart';
import 'package:chief_mate/features/home/presentation/views/widgets/add_task_view_app_bar.dart';
import 'package:chief_mate/features/home/presentation/views/widgets/add_task_view_text_fields.dart';
import 'package:chief_mate/features/ingredients/ui/widgets/custom_add_photo.dart';
import 'package:chief_mate/features/recipes/presemtation/views/widgets/custom_timer_row_recipe_view.dart';
import 'package:chief_mate/features/tasks/presentation/views/widgets/custom_task_view_list_view.dart';
import 'package:chief_mate/features/tasks/presentation/views/widgets/priority_options.dart';
import 'package:chief_mate/features/tasks/presentation/views/widgets/select_date_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddTaskViewBody extends StatelessWidget {
  const AddTaskViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: AddTaskViewAppBar(),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 20.h),
          ),
          const SliverToBoxAdapter(
            child: CustomAddPhoto(),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 20.h),
          ),
          const SliverToBoxAdapter(
            child: SelectDateSection(),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 40.h),
          ),
          const SliverToBoxAdapter(
            child: AddTaskViewTextFields(),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 40.h),
          ),
          const SliverToBoxAdapter(
            child: CustomTimerRowRecipeView(),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 40.h),
          ),
          SliverToBoxAdapter(
            child: Text(
              'Производственный цех',
              style: AppStyles.textStyle20,
            ),
          ),
          SliverToBoxAdapter(
            child: Text(
              'Сотрудники выбранных цехов увидят созданное задание',
              style: AppStyles.textStyle16.copyWith(color: AppColors.kColor3),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 20.h),
          ),
          const CustomTaskViewListView(),
          SliverToBoxAdapter(
            child: SizedBox(height: 40.h),
          ),
          SliverToBoxAdapter(
            child: Text(
              'Роль',
              style: AppStyles.textStyle20,
            ),
          ),
          SliverToBoxAdapter(
            child: Text(
              'Сотрудники с выбранной ролью увидят созданное задание',
              style: AppStyles.textStyle16.copyWith(color: AppColors.kColor3),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 20.h),
          ),
          const CustomTaskViewListView(),
          SliverToBoxAdapter(
            child: SizedBox(height: 40.h),
          ),
          SliverToBoxAdapter(
            child: Text(
              'Приоритет',
              style: AppStyles.textStyle16.copyWith(
                color: AppColors.kColor3,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 8.h),
          ),
          const SliverToBoxAdapter(
            child: PriorityOptions(),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 100.h),
          ),
        ],
      ),
    ));
  }
}
