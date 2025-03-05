import 'package:chief_mate/features/work_space/ui/widgets/custom_category_view_list_view_item.dart';
import 'package:flutter/widgets.dart';

class CustomAddCategoryViewListView extends StatelessWidget {
  const CustomAddCategoryViewListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 10,
      itemBuilder: (context, index) => const CustomCategoryViewListViewItem(),
    );
  }
}
