import '../../../../../core/routes/routes.dart';
import 'package:chief_mate/core/widgets/custom_button.dart';
import 'package:chief_mate/features/work_space/presentation/views/widgets/edit_work_space_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../auth/data/models/create_work_space_request_model.dart';
import '../../../auth/presentation/views/screens/work_space_view.dart';

class EditWorkSpaceView extends StatelessWidget {
  const EditWorkSpaceView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        const EditWorkSpaceBody(),
        Positioned(
          right: 20.w,
          bottom: 20.h,
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: EdgeInsets.only(left: 40.w),
              child: CustomButton(
                onTap: () {
              GoRouter.of(context).push(WorkSpaceView.routeName,
                extra: CreateWorkSpaceRequestModel(name: "*/*/", colorId: "1"));
                },
                buttonName: 'Сохранить изменения',
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
