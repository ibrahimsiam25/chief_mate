import 'package:chief_mate/core/constants/icons.dart';
import 'package:chief_mate/core/widgets/custom_text_field.dart';
import 'package:chief_mate/features/work_space/presentation/views/widgets/custom_work_space_categories_view_app_bar.dart';
import 'package:chief_mate/features/work_space/presentation/views/widgets/custom_work_space_categories_view_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class WorkSpaceCategoriesViewBody extends StatelessWidget {
  const WorkSpaceCategoriesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: CustomWorkSpaceCategoriesViewAppBar(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: 30.h),
            ),
            SliverToBoxAdapter(
              child: CustomTextField(
                hintText: 'Поиск по рабочим пространствам',
                prefixIcon: Padding(
                  padding: EdgeInsets.only(left: 20.w, right: 12.w),
                  child: SvgPicture.asset(
                    AppIcons.search,
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: 20.h),
            ),
            const CustomWorkSpaceCategoriesViewListView()
          ],
        ),
      ),
    );
  }
}
