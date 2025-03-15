import 'package:chief_mate/core/constants/icons.dart';
import 'package:chief_mate/features/auth/ui/widgets/custom_auth_subtitle_text.dart';
import 'package:chief_mate/features/auth/ui/widgets/permission_view_info_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg_flutter.dart';
import 'package:permission_handler/permission_handler.dart';
import '../../../../core/constants/colors.dart';
import '../../../../core/constants/styles.dart';

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
              SizedBox(height: 40.h),
              const PermissionViewInfoHeader(),
              SizedBox(height: 30.h),
              const CustomPermissionViewItem(
                title: 'Камера',
                subtitle: 'Нажмите, чтобы включить',
                icon: AppIcons.perCamera,
                permission: Permission.camera,
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
                permission: Permission.notification,
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


class CustomPermissionViewItem extends StatefulWidget {
  const CustomPermissionViewItem({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.permission, 
  });

  final String title;
  final String subtitle;
  final String icon;
  final Permission permission;

  @override
  State<CustomPermissionViewItem> createState() =>
      _CustomPermissionViewItemState();
}

class _CustomPermissionViewItemState extends State<CustomPermissionViewItem> {
  bool isSelected = false;

  @override
  void initState() {
    super.initState();
    _checkPermissionStatus(); // التحقق من حالة الإذن عند بدء التشغيل
  }

  Future<void> _checkPermissionStatus() async {
    final status = await widget.permission.status;
    setState(() {
      isSelected = status.isGranted;
    });
  }

  Future<void> _requestPermission() async {
    final status = await widget.permission.request();
    setState(() {
      isSelected = status.isGranted;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.r),
        side: BorderSide(
          color: isSelected ? AppColors.kColor2 : AppColors.kColor8,
        ),
      ),
      title: Text(
        widget.title,
        style: AppStyles.textStyle16,
      ),
      subtitle: Text(
        widget.subtitle,
        style: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
          color: AppColors.kColor3,
        ),
      ),
      leading: SvgPicture.asset(widget.icon),
      trailing: Checkbox(
        activeColor: AppColors.kColor2,
        value: isSelected,
        onChanged: (val) {
          if (val == true) {
            _requestPermission(); // طلب الإذن عند الضغط على الـ Checkbox
          } else {
            setState(() {
              isSelected = false;
            });
          }
        },
      ),
    );
  }
}
