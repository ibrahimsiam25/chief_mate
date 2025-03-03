import 'package:chief_mate/features/auth/presentation/views/widgets/custom_auth_header_text.dart';
import 'package:chief_mate/features/auth/presentation/views/widgets/custom_auth_subtitle_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PermissionViewInfoHeader extends StatelessWidget {
  const PermissionViewInfoHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomAuthHeaderText(text: 'Права доступа'),
        SizedBox(height: 5.h),
        const CustomAuthSubtitleText(
            text:
                'Настройте права доступа к следующим функциям, чтобы пользоваться всеми функциями ChefMate'),
      ],
    );
  }
}
