import 'package:chief_mate/core/constants/icons.dart';
import 'package:chief_mate/core/widgets/custom_skeletonizer.dart';
import 'package:chief_mate/core/widgets/custom_text_field.dart';
import 'package:chief_mate/features/work_space/logic/get_all_work_space/get_all_work_space_cubit.dart';
import 'package:chief_mate/features/work_space/logic/get_all_work_space/get_all_work_space_state.dart';
import 'package:chief_mate/features/work_space/ui/widgets/custom_work_space_categories_view_app_bar.dart';
import 'package:chief_mate/features/work_space/ui/widgets/work_space_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

import '../../../../core/routes/routes_import.dart';

class WorkSpaceCategoriesViewBody extends StatefulWidget {
  const WorkSpaceCategoriesViewBody({super.key});

  @override
  State<WorkSpaceCategoriesViewBody> createState() =>
      _WorkSpaceCategoriesViewBodyState();
}

class _WorkSpaceCategoriesViewBodyState
    extends State<WorkSpaceCategoriesViewBody> {
  final TextEditingController _searchController = TextEditingController();
  String _searchQuery = "";

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetAllWorkSpaceCubit, GetAllWorkSpaceState>(
      builder: (context, state) {
        return SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomWorkSpaceCategoriesViewAppBar(),
                  SizedBox(height: 30.h),
                  CustomTextField(
                    hintText: 'Поиск по рабочим пространствам',
                    prefixIcon: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 6.w),
                      child: SvgPicture.asset(
                        AppIcons.search,
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                    controller: _searchController,
                    onChanged: (value) {
                      setState(() {
                        _searchQuery = value.toLowerCase();
                      });
                    },
                  ),
                  SizedBox(height: 20.h),
                  _buildWorkspaceGrid(state),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildWorkspaceGrid(GetAllWorkSpaceState state) {
    if (state is Error) return const SizedBox();

    final workspaces = (state is Success) ? state.data?.data ?? [] : [];

    final searchQuery = (_searchQuery).toLowerCase();
    final filteredWorkspaces = workspaces.where((workspace) {
      final name = (workspace.name ?? "").toString().toLowerCase();
      return name.contains(searchQuery);
    }).toList();

    return CustomSkeletonizer(
      isLoading: state is Loading,
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: state is Loading ? 16 : filteredWorkspaces.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.w,
          mainAxisSpacing: 10.h,
          childAspectRatio: 1.5,
        ),
        itemBuilder: (context, index) {
          if (state is Loading) {
            return Container(
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(16.r),
              ),
            );
          }
          final workspace = filteredWorkspaces[index];
          return WorkspaceItem(workspace: workspace);
        },
      ),
    );
  }
}
