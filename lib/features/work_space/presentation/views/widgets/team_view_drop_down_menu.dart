import 'package:chief_mate/core/constants/colors.dart';
import 'package:chief_mate/core/constants/icons.dart';
import 'package:chief_mate/core/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class TeamViewDropDownMenu extends StatelessWidget {
  const TeamViewDropDownMenu({
    super.key,
    required this.text,
    this.onTap,
  });
  final String text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text,
                style: AppStyles.textStyle16.copyWith(
                  color: AppColors.kColor7,
                ),
              ),
              SvgPicture.asset(AppIcons.arrowDown),
            ],
          ),
          const Divider()
        ],
      ),
    );
  }
}
