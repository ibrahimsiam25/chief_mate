import 'package:chief_mate/core/constants/colors.dart';
import 'package:chief_mate/core/constants/icons.dart';
import 'package:chief_mate/core/constants/styles.dart';
import 'package:chief_mate/features/ingredients/ui/widgets/ingredient_list_view_items_pop_up_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class CutomIngredientListViewItem extends StatelessWidget {
  const CutomIngredientListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Ингредиент 1',
        style: AppStyles.textStyle16,
      ),
      subtitle: Text(
        '100 грамм',
        style: AppStyles.textStyle16.copyWith(
          color: AppColors.kColor3,
        ),
      ),
      leading: SvgPicture.asset(
        AppIcons.item,
        height: 40.h,
        width: 40.w,
      ),
      trailing: const IngredientListViewItemsPopUpMenu(),
    );
  }
}
