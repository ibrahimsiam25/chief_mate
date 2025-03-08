import 'package:chief_mate/core/widgets/custom_button.dart';
import 'package:chief_mate/features/recipes/presemtation/views/widgets/related_recipes_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RelatedRecipesView extends StatelessWidget {
  const RelatedRecipesView({super.key});
static const String routeName = '/related_recipes_view';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: EdgeInsets.only(left: 30.w),
        child: CustomButton(
          buttonName: 'Сохранить',
          onTap: () {},
        ),
      ),
      body: const RelatedRecipesViewBody(),
    );
  }
}
