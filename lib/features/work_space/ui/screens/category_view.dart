import 'package:chief_mate/features/work_space/ui/widgets/category_view_body.dart';
import 'package:flutter/material.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key});
static String routeName = '/category_view';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CategoryViewBody(),
    );
  }
}
