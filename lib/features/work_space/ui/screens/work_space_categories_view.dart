import 'package:chief_mate/features/work_space/ui/widgets/work_space_categories_view_body.dart';
import 'package:flutter/material.dart';

class WorkSpaceCategoriesView extends StatelessWidget {
  const WorkSpaceCategoriesView({super.key});
static const String routeName = '/workSpaceCategoriesView';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: WorkSpaceCategoriesViewBody(),
    );
  }
}
