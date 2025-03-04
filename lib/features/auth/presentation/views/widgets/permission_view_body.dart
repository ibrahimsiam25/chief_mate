import 'package:chief_mate/core/constants/icons.dart';
import 'package:chief_mate/features/auth/presentation/views/widgets/add_phone_number_view_app_bar.dart';
import 'package:chief_mate/features/auth/presentation/views/widgets/custom_auth_subtitle_text.dart';
import 'package:chief_mate/features/auth/presentation/views/widgets/custom_permission_view_item.dart';
import 'package:chief_mate/features/auth/presentation/views/widgets/permission_view_info_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PermissionViewBody extends StatelessWidget {
  const PermissionViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAuthAppBar(),
              SizedBox(height: 40.h),
              const PermissionViewInfoHeader(),
              SizedBox(height: 30.h),
              const CustomPermissionViewItem(
                title: 'Камера',
                subtitle: 'Нажмите, чтобы включить',
                icon: AppIcons.perCamera,
              ),
              SizedBox(height: 8.h),
              const CustomAuthSubtitleText(
                  text:
                      'Добавляйте фото или видео в пошаговые инструкции, обложки рецептов и в комментарии'),
              SizedBox(height: 30.h),
              const CustomPermissionViewItem(
                title: 'Уведомления',
                subtitle: 'Нажмите, чтобы включить',
                icon: AppIcons.bell,
              ),
              SizedBox(height: 8.h),
              const CustomAuthSubtitleText(
                  text:
                      'Устанавливайте таймеры во время готовки и получайте уведомления когда время таймера пройдёт'),
           SizedBox(height: 30.h),
            ],
          ),
        ),
      ),
    );
  }
}
