import 'package:chief_mate/core/constants/icons.dart';
import '../../../../../core/routes/routes.dart';
import 'package:chief_mate/core/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:svg_flutter/svg.dart';

import '../../../../auth/data/models/create_work_space_request_model.dart';
import '../../../../auth/presentation/views/screens/work_space_view.dart';

class CustomProductionViewAppBar extends StatelessWidget {
  const CustomProductionViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
              GoRouter.of(context).push(WorkSpaceView.routeName,
                extra: CreateWorkSpaceRequestModel(name: "*/*/", colorId: "1"));
          },
          child: SvgPicture.asset(AppIcons.arrowBack),
        ),
        Text(
          'Производственные цеха',
          style: AppStyles.textStyle20,
        ),
        const SizedBox(),
      ],
    );
  }
}
