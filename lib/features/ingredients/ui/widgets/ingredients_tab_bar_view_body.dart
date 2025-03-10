import 'package:chief_mate/core/constants/icons.dart';
import 'package:chief_mate/core/widgets/custom_add_button.dart';
import 'package:chief_mate/features/ingredients/ui/widgets/custom_filter_ingredients_view_list_view.dart';
import 'package:chief_mate/features/ingredients/ui/widgets/custom_ingredients_list_view.dart';
import 'package:chief_mate/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';


import '../../data/models/all_warehouse_response_model.dart';

class IngredientsTabBarViewBody extends StatelessWidget {
  const IngredientsTabBarViewBody({super.key, required this.allWarehouseResponseModel});
final AllWarehouseResponseModel allWarehouseResponseModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 20.w, left: 20.w, right: 20.w),
          child: CustomTextField(
            hintText: 'Поиск по ингредиентам',
            prefixIcon: Padding(
              padding: EdgeInsets.only(left: 20.w, right: 12.w),
              child: SvgPicture.asset(
                AppIcons.search,
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 10.h),
          child:  CustomFilterIngredientsViewListView(
            allWarehouseResponseModel: allWarehouseResponseModel,
          ),
        ),
        CustomIngredientsListView(
          allWarehouseResponseModel: allWarehouseResponseModel,
        ),
      ],
    );
  }
}
