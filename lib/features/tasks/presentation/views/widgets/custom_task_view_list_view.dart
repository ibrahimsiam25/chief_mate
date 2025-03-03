import 'package:chief_mate/features/tasks/presentation/views/widgets/custom_task_view_list_view_item.dart';
import 'package:flutter/material.dart';

class CustomTaskViewListView extends StatelessWidget {
  const CustomTaskViewListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return const CustomTaskViewListViewItem();
      },
    );
  }
}
