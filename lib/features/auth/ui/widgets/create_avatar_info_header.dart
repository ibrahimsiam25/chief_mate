import 'package:chief_mate/features/auth/ui/widgets/custom_auth_header_text.dart';
import 'package:chief_mate/features/auth/ui/widgets/custom_auth_subtitle_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreateAvatarInfoHeader extends StatelessWidget {
  const CreateAvatarInfoHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomAuthHeaderText(text: 'Аватар'),
        SizedBox(height: 5.h),
        const CustomAuthSubtitleText(
            text: 'Выберете аватар для вашего аккаунта')
      ],
    );
  }
}
