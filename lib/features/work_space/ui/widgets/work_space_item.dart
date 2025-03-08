import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

import '../../../../core/constants/icons.dart';
import '../../../../core/constants/styles.dart';
import '../../../../core/routes/routes_import.dart';

class WorkspaceItem extends StatelessWidget {
  final dynamic workspace;
  const WorkspaceItem({required this.workspace, super.key});

  @override
  Widget build(BuildContext context) {
    final color = Color(int.parse(workspace.colorCode));
    return Stack(
      children: [
        GestureDetector(
          onTap: () => GoRouter.of(context).go(WorkSpaceView.routeName,
              extra: WorkSpaceResponseModel(
                  data: WorkspaceData(
                color: workspace.color,
                colorCode: workspace.colorCode,
                id: workspace.id,
                name: workspace.name,
              ))),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
            alignment: Alignment.bottomLeft,
            height: 100.h,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(16.r),
            ),
            child: Text(
              workspace.name ?? 'No name',
              style: AppStyles.textStyle16,
            ),
          ),
        ),
        Positioned(
          right: 10.w,
          top: 10.h,
          child: GestureDetector(
            onTap: () {},
            child: SvgPicture.asset(
              AppIcons.more,
              width: 15.w,
            ),
          ),
        ),
      ],
    );
  }
}
