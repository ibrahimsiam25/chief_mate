import 'package:chief_mate/features/work_space/presentation/views/widgets/custom_production_view_list_view_item.dart';
import 'package:flutter/material.dart';

class CustomProductionViewListView extends StatelessWidget {
  const CustomProductionViewListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (BuildContext context, int index) {
        return const CustomProductionViewListViewItem();
      },
    );
  }
}
