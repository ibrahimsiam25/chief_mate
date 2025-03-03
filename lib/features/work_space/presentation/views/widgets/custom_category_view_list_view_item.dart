import 'package:chief_mate/core/constants/icons.dart';
import 'package:chief_mate/core/constants/styles.dart';
import 'package:chief_mate/features/work_space/presentation/views/widgets/add_category_list_view_items_pop_up_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class CustomCategoryViewListViewItem extends StatelessWidget {
  const CustomCategoryViewListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(
            '🥘  Супы',
            style: AppStyles.textStyle16,
          ),
          leading: SvgPicture.asset(
            AppIcons.vLines,
            height: 20.h,
          ),
          trailing: const AddCategoryListViewItemsPopUpMenu(),
        ),
        const Divider()
      ],
    );
  }
}
