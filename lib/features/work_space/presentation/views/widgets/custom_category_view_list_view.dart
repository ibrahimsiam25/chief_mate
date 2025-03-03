import 'package:chief_mate/features/work_space/presentation/views/widgets/custom_category_view_list_view_item.dart';
import 'package:flutter/material.dart';

class CustomCategoryViewListView extends StatelessWidget {
  const CustomCategoryViewListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 4,
      itemBuilder: (BuildContext context, int index) {
        return const CustomCategoryViewListViewItem();
      },
    );
  }
}
