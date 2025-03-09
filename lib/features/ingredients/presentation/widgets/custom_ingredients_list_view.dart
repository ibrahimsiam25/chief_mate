import 'package:chief_mate/features/ingredients/presentation/widgets/custom_ingredient_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/routes/routes_import.dart';
import '../views/ingredient_details_view.dart';

class CustomIngredientsListView extends StatelessWidget {
  const CustomIngredientsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 4.5.w, right: 4.5.w),
        child: ListView.builder(

          itemCount: 20,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                GoRouter.of(context).push(IngredientDetailsView.routeName);
              },
              child: const CutomIngredientListViewItem(),
            );
          },
        ),
      ),
    );
  }
}
