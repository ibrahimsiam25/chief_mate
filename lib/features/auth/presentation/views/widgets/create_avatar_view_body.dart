import 'dart:io';

import 'package:chief_mate/core/constants/prefs.dart';
import 'package:chief_mate/core/helper/shared_pref_helper.dart';
import 'package:chief_mate/features/auth/presentation/views/widgets/add_phone_number_view_app_bar.dart';
import 'package:chief_mate/features/auth/presentation/views/widgets/create_avatar_info_header.dart';
import 'package:chief_mate/features/auth/presentation/views/widgets/custom_change_avatar_text.dart';
import 'package:chief_mate/features/auth/presentation/views/widgets/custom_image_create_avatar.dart';
import 'package:chief_mate/features/auth/presentation/views/widgets/custom_picked_image.dart';
import 'package:chief_mate/features/auth/presentation/views/widgets/show_modal_bottom_sheet_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';

class CreateAvatarViewBody extends StatefulWidget {
  final Function(File?) onAvatarSelected;
  const CreateAvatarViewBody({super.key, required this.onAvatarSelected});

  @override
  State<CreateAvatarViewBody> createState() => _CreateAvatarViewBodyState();
}

class _CreateAvatarViewBodyState extends State<CreateAvatarViewBody> {
  File? image;
  final imagePicker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomAuthAppBar(),
            SizedBox(height: 40.h),
            Padding(
              padding: EdgeInsets.only(left: 20.w),
              child: const CreateAvatarInfoHeader(),
            ),
            SizedBox(height: 80.h),
            Align(
              alignment: Alignment.center,
              child: image != null
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () => showModelBottomSheet(context),
                          child: CustomPickedImage(image: image),
                        ),
                        SizedBox(height: 20.h),
                        const CustomChangeAvatarText(
                            textName: 'Нажмите, чтобы заменить фото'),
                      ],
                    )
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () => showModelBottomSheet(context),
                          child: const CustomImageCreateAvatar(),
                        ),
                        SizedBox(height: 20.h),
                        const CustomChangeAvatarText(
                            textName: 'Нажмите, чтобы добавить фото'),
                      ],
                    ),
            )
          ],
        ),
      ),
    );
  }

  Future pickImageFromGallery() async {
    var pickedImage = await imagePicker.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      setState(() {
        image = File(pickedImage.path);
      });
      await SharedPrefHelper.setData(Prefs.avatarImagePath, pickedImage.path);
       widget.onAvatarSelected(image);
      GoRouter.of(context).pop();
    }
  }

  Future pickImageFromCamera() async {
    var pickedImage = await imagePicker.pickImage(source: ImageSource.camera);
    if (pickedImage != null) {
      setState(() {
        image = File(pickedImage.path);
      });
     await SharedPrefHelper.setData(Prefs.avatarImagePath, pickedImage.path);
       widget.onAvatarSelected(image);
      GoRouter.of(context).pop();
    }
  }

  void showModelBottomSheet(BuildContext context) {
    showModalBottomSheet(
      constraints: BoxConstraints(maxHeight: 150.h, minHeight: 150.h),
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => ShowModalBottomSheetBody(
        onPressedCamera: pickImageFromCamera,
        onPressedGallery: pickImageFromGallery,
      ),
    );
  }
}
