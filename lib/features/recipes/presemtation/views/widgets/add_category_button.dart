import 'package:chief_mate/core/constants/icons.dart';
import 'package:chief_mate/core/widgets/custom_text_field.dart';
import 'package:chief_mate/features/recipes/presemtation/views/widgets/custom_add_recipe_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class AddCategoryButton extends StatelessWidget {
  const AddCategoryButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              flex: 2,
              child: CustomTextField(
                hintText: 'Название категории',
                prefixIcon: Padding(
                  padding: EdgeInsets.only(left: 20.w, right: 12.w),
                  child: SvgPicture.asset(
                    AppIcons.vLines,
                  ),
                ),
                fillColor: Colors.transparent,
                borderColor: Colors.transparent,
              ),
            ),
            Expanded(
              child: CustomAddRecipeButton(
                text: 'Добавить',
                onTap: () {},
              ),
            )
          ],
        ),
        Padding(
          padding: EdgeInsets.only(left: 20.w),
          child: const Divider(),
        )
      ],
    );
  }
}
