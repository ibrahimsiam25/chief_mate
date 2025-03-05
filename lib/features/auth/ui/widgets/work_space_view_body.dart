import 'package:chief_mate/core/constants/colors.dart';
import 'package:chief_mate/core/constants/icons.dart';
import 'package:chief_mate/features/auth/ui/widgets/custom_work_space_item.dart';
import 'package:chief_mate/features/auth/ui/widgets/custom_work_space_view_shape.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/routes/routes_import.dart';
import '../../../../core/widgets/custom_view_app_bar.dart';
import '../../data/models/work_space_response_model.dart';

class WorkSpaceViewBody extends StatelessWidget {
  const WorkSpaceViewBody({super.key, required this.workSpaceModel});
final WorkSpaceResponseModel workSpaceModel;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10.h),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child:    CustomAppBar(
              title: '',
          iconButtonOnPressed: () {
              GoRouter.of(context).go(
                      WorkSpaceCategoriesView.routeName,
                    );
          },
             ),
              ),
              SizedBox(height: 20.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: GestureDetector(
                  onTap: () {
                    // GoRouter.of(context).pushReplacement(
                    //     AppRoutes.kBottomNavBarController,
                    //     extra: 0);
                  },
                  child:  CustomWorkSpaceViewShape(
                    workSpaceModel: workSpaceModel,
                  ),
                ),
              ),
              SizedBox(height: 15.h),
              CustomWorkSpaceItem(
                icon: AppIcons.team,
                text: 'Команда',
                onTap: () {
                  GoRouter.of(context).pushReplacement(TeamView.routeName);
                },
              ),
              CustomWorkSpaceItem(
                icon: AppIcons.factory,
                text: 'Производственные цеха',
                onTap: () {
                  GoRouter.of(context)
                      .pushReplacement(ProductionView.routeName);
                },
              ),
              CustomWorkSpaceItem(
                icon: AppIcons.fire2,
                text: 'Задания',
                onTap: () {},
              ),
              CustomWorkSpaceItem(
                icon: AppIcons.lamb,
                text: 'Активность',
                onTap: () {},
              ),
              CustomWorkSpaceItem(
                icon: AppIcons.boxes,
                text: 'Склад',
                onTap: () {
                  GoRouter.of(context)
                      .push(BottomNavBarController.routeName, extra: 1);
                },
              ),
              CustomWorkSpaceItem(
                icon: AppIcons.bookOpen,
                text: 'Рецепты',
                onTap: () {
                  GoRouter.of(context).pushReplacement(
                     BottomNavBarController.routeName,
                      extra: 2);
                },
              ),
              CustomWorkSpaceItem(
                icon: AppIcons.category2,
                text: 'Категории',
                onTap: () {
                  GoRouter.of(context).pushReplacement(CategoryView.routeName);
                },
              ),
              CustomWorkSpaceItem(
                icon: AppIcons.delete2,
                text: 'Удалить рабочее пространство',
                onTap: () {},
                color: AppColors.kColor9,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
