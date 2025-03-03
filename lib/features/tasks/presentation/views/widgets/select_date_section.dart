import 'package:chief_mate/core/constants/colors.dart';
import 'package:chief_mate/core/constants/icons.dart';
import 'package:chief_mate/core/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:svg_flutter/svg.dart';

class SelectDateSection extends StatefulWidget {
  const SelectDateSection({super.key});

  @override
  State<SelectDateSection> createState() => _SelectDateSectionState();
}

class _SelectDateSectionState extends State<SelectDateSection> {
  DateTime dateTime = DateTime.now();
  var formatter = DateFormat.ABBR_MONTH;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Дата',
          style: AppStyles.textStyle16.copyWith(
            color: AppColors.kColor3,
          ),
        ),
        SizedBox(height: 8.h),
        GestureDetector(
          onTap: () {
            showDatePicker(
              locale: const Locale('ru'),
              context: context,
              firstDate: DateTime(2000),
              lastDate: DateTime(2025),
              initialDate: dateTime,
            ).then(
              (value) {
                if (value != null) {
                  setState(() {
                    dateTime = value;
                  });
                }
              },
            );
          },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.r),
              color: AppColors.kColor5,
              border: Border.all(color: AppColors.kColor11),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  DateFormat('MM MMMM yyyy').format(dateTime),
                  style: AppStyles.textStyle16,
                ),
                SvgPicture.asset(AppIcons.calender),
              ],
            ),
          ),
        )
      ],
    );
  }
}
