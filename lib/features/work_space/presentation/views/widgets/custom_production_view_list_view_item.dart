import 'package:chief_mate/core/constants/icons.dart';
import 'package:chief_mate/core/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class CustomProductionViewListViewItem extends StatelessWidget {
  const CustomProductionViewListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(
            'Холодный цех',
            style: AppStyles.textStyle16,
          ),
          leading: SvgPicture.asset(
            AppIcons.vLines,
            height: 20.h,
          ),
          trailing: GestureDetector(
            onTap: () {},
            child: SvgPicture.asset(
              AppIcons.addContainer,
              height: 26.h,
            ),
          ),
        ),
        const Divider()
      ],
    );
  }
}
