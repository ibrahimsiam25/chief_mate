import 'package:chief_mate/features/work_space/logic/get_all_work_space/get_all_work_space_cubit.dart';
import 'package:chief_mate/features/work_space/ui/widgets/work_space_categories_view_body.dart';
import 'package:flutter/material.dart';

import '../../../../core/routes/routes_import.dart';

class WorkSpaceCategoriesView extends StatelessWidget {
  const WorkSpaceCategoriesView({super.key});
  static const String routeName = '/workSpaceCategoriesView';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<GetAllWorkSpaceCubit>()..getAllWorkSpace(),
      child: const Scaffold(
        body: WorkSpaceCategoriesViewBody(),
      ),
    );
  }
}
