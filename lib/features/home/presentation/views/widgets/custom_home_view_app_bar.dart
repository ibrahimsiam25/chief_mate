import 'package:chief_mate/core/constants/icons.dart';
import 'package:chief_mate/core/constants/app_constants.dart';

import 'package:chief_mate/core/constants/styles.dart';
import 'package:chief_mate/features/auth/data/models/work_space_request_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:svg_flutter/svg.dart';
import '../../../../../core/routes/routes.dart';
import '../../../../../core/routes/routes_import.dart';
import '../../../../auth/data/models/work_space_response_model.dart';

class CustomHomeViewAppBar extends StatelessWidget {
  const CustomHomeViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            GoRouter.of(context).push( WorkSpaceCategoriesView.routeName);
          },
          child: SvgPicture.asset(
            AppIcons.arrowDown,
            height: 24.h,
            width: 24.w,
          ),
        ),
        Text(
          "CustomHomeViewAppBar",
          //  prefs.getString(Prefs.workSpaceName).toString(),
          style: AppStyles.textStyle20,
        ),
        IconButton(
          onPressed: () {
            GoRouter.of(context).push(WorkSpaceView.routeName,
                extra:WorkSpaceResponseModel(
                  data: WorkspaceData(
                    id: 1,
                    name: "CustomHomeViewAppBar",
                    colorCode: "0xFFE0E0E0",

                  ),
                ));
          },
          icon: SvgPicture.asset(
            AppIcons.more,
            height: 24.h,
            width: 24.w,
          ),
        ),
      ],
    );
  }
}
