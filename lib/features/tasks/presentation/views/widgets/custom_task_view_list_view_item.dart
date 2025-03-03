import 'package:chief_mate/core/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTaskViewListViewItem extends StatefulWidget {
  const CustomTaskViewListViewItem({super.key});

  @override
  State<CustomTaskViewListViewItem> createState() =>
      _CustomTaskViewListViewItemState();
}

class _CustomTaskViewListViewItemState
    extends State<CustomTaskViewListViewItem> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Checkbox(
              value: isSelected,
              onChanged: (val) {
                setState(() {
                  isSelected = val!;
                });
              },
            ),
            SizedBox(width: 10.w),
            Text(
              'Показать всем',
              style: AppStyles.textStyle16,
            ),
          ],
        ),
        const Divider(),
      ],
    );
  }
}
