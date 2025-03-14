import 'dart:io';
import 'package:chief_mate/features/auth/ui/widgets/show_modal_bottom_sheet_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
class ImagePickerHelper {
  static final ImagePicker _imagePicker = ImagePicker();

  static Future<File?> pickImage(ImageSource source) async {
    final pickedFile = await _imagePicker.pickImage(source: source);
    return pickedFile != null ? File(pickedFile.path) : null;
  }

  static void showModelBottomSheet(
    BuildContext context, {
    required Function() onCameraPressed,
    required Function() onGalleryPressed,
  }) {
    showModalBottomSheet(
      constraints: BoxConstraints(maxHeight: 150.h, minHeight: 150.h),
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => ShowModalBottomSheetBody(
        onPressedCamera: onCameraPressed,
        onPressedGallery: onGalleryPressed,
      ),
    );
  }
}
