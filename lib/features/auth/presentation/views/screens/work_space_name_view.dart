import 'package:chief_mate/core/widgets/custom_button.dart';
import 'package:chief_mate/features/auth/presentation/views/widgets/work_space_name_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/routes/routes.dart';

class WorkSpaceNameView extends StatefulWidget {
  const WorkSpaceNameView({super.key});
static String routeName = '/workSpaceNameView';
  @override
  State<WorkSpaceNameView> createState() => _WorkSpaceNameViewState();
}

class _WorkSpaceNameViewState extends State<WorkSpaceNameView> {
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: formState,
          child: Stack(
            children: [
              const WorkSpaceNameViewBody(),
              Positioned(
                right: 20.w,
                bottom: 20.h,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: EdgeInsets.only(left: 40.w),
                    child: CustomButton(
                      onTap: () {
                        if (formState.currentState!.validate()) {
                          GoRouter.of(context).push(AppRoutes.kChooseColorView);
                        } else {}
                      },
                      buttonName: 'Продолжить',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
