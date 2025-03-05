import 'dart:io';

import 'package:chief_mate/core/widgets/custom_modal_progress.dart';
import 'package:chief_mate/features/auth/logic/update_user_profile/updatr_user_profile_cubit.dart';

import '../../../../core/routes/routes.dart';
import 'package:chief_mate/core/widgets/custom_button.dart';
import 'package:chief_mate/features/auth/ui/widgets/create_avatar_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/routes/routes_import.dart';
import '../../../../core/widgets/show_error_dialog.dart';
import '../../data/models/update_user_profile_request_model.dart';
import '../../logic/update_user_profile/updatr_user_profile_state.dart';

class CreateAvatarView extends StatefulWidget {
  const CreateAvatarView({super.key, required this.userName});
  static String routeName = '/createAvatarView';
  final String userName;

  @override
  State<CreateAvatarView> createState() => _CreateAvatarViewState();
}

class _CreateAvatarViewState extends State<CreateAvatarView> {
  File avatar=File('');

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UpdateUserProfileCubit,UpdateUserProfileState>(
      listener: (context, state) {
       state.whenOrNull(
            error: (apiErrorModel) {
              showErrorDialog(context, apiErrorModel);
            },
            success: (updateUserProfileResponse) {
                   GoRouter.of(context).push(PermissionView.routeName);
            },
          );
      },
      builder: (context, state) {
        return CustomModalProgress(
        isLoading:state is UpdateUserProfileLoading ? true : false, 
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Stack(
            children: [
              CreateAvatarViewBody(
                onAvatarSelected: (File? avatarFile) {
                  setState(() {
                    if (avatarFile != null) {
                      avatar = avatarFile;
                    }
                  });
                },
              ),
              Positioned(
                right: 20.w,
                bottom: 20.h,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: EdgeInsets.only(left: 40.w),
                    child: CustomButton(
                      onTap: () {
                        context
                            .read<UpdateUserProfileCubit>()
                            .emitUpdateUserProfileStates(
                              updateUserProfileRequestModel:
                                  UpdateUserProfileRequestModel(
                                name: widget.userName,
                                avatar: avatar
                              ),
                            );
                      },
                      buttonName: 'Продолжить',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
      }
    );
  }
}
