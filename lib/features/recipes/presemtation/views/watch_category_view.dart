import 'package:chief_mate/features/recipes/presemtation/views/widgets/watch_category_view_body.dart';
import 'package:flutter/material.dart';

class WatchCategoryView extends StatelessWidget {
  const WatchCategoryView({super.key});
static const String routeName = '/watch-category-view';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: WatchCategoryViewBody(),
    );
  }
}
