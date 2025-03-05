import 'package:chief_mate/core/constants/colors.dart';
import 'package:chief_mate/core/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class CustomPermissionViewItem extends StatefulWidget {
  const CustomPermissionViewItem({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
  });

  final String title;
  final String subtitle;
  final String icon;

  @override
  State<CustomPermissionViewItem> createState() =>
      _CustomPermissionViewItemState();
}

class _CustomPermissionViewItemState extends State<CustomPermissionViewItem> {
  bool isSelected = false;

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
      leading: SvgPicture.asset(
        widget.icon,
      ),
      trailing: Checkbox(
        activeColor: AppColors.kColor2,
        value: isSelected,
        onChanged: (val) {
          setState(() {
            isSelected = val!;
          });
        },
      ),
    );
  }
}
