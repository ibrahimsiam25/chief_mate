import 'package:chief_mate/core/constants/icons.dart';
import 'package:chief_mate/core/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

import '../../../../core/routes/routes_import.dart';

class CustomCategoryViewAppBar extends StatelessWidget {
  const CustomCategoryViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
             GoRouter.of(context).push(WorkSpaceView.routeName,
                extra: WorkSpaceResponseModel(
                  data: WorkspaceData(
                    id: 1,
                    name: "CustomCategoryViewAppBar",
                    colorCode: "0xFFE0E0E0",
                  ),
                ));
          },
          child: SvgPicture.asset(AppIcons.arrowBack),
        ),
        Text(
          'Категории',
          style: AppStyles.textStyle20,
        ),
        const SizedBox(),
      ],
    );
  }
}
