import 'package:chief_mate/core/constants/colors.dart';
import 'package:chief_mate/core/constants/styles.dart';
import 'package:chief_mate/core/widgets/custom_button.dart';
import 'package:chief_mate/features/recipes/presemtation/views/widgets/select_timer_view_app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectTimerView extends StatefulWidget {
  const SelectTimerView({super.key});

  @override
  SelectTimerViewState createState() => SelectTimerViewState();
}

class SelectTimerViewState extends State<SelectTimerView> {
  int selectedHour = 0;
  int selectedMinute = 0;
  int selectedSecond = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: EdgeInsets.only(left: 30.w),
        child: CustomButton(
          onTap: () {
            print(
                'Selected Time: $selectedHour hours, $selectedMinute minutes, $selectedSecond seconds');
          },
          buttonName: 'Добавить',
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        child: Column(
          children: [
            // Custom AppBar
            const SelectTimerViewAppBar(),
            SizedBox(height: 40.h),
            SizedBox(
              height: 150.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Hour Picker
                  _buildPicker(
                    title: 'час',
                    itemCount: 24,
                    onSelectedItemChanged: (int value) {
                      setState(() {
                        selectedHour = value;
                      });
                    },
                  ),
                  // Minute Picker
                  _buildPicker(
                    title: 'мин',
                    itemCount: 60,
                    onSelectedItemChanged: (int value) {
                      setState(() {
                        selectedMinute = value;
                      });
                    },
                  ),
                  // Second Picker
                  _buildPicker(
                    title: 'сек',
                    itemCount: 60,
                    onSelectedItemChanged: (int value) {
                      setState(() {
                        selectedSecond = value;
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 40.h),
          ],
        ),
      ),
    );
  }

  // Helper method to create CupertinoPicker
  Widget _buildPicker({
    required String title,
    required int itemCount,
    required ValueChanged<int> onSelectedItemChanged,
  }) {
    return Expanded(
      child: Row(
        children: [
          Expanded(
            child: CupertinoPicker(
              itemExtent: 32.0,
              onSelectedItemChanged: onSelectedItemChanged,
              children: List<Widget>.generate(itemCount, (int index) {
                return Center(
                  child: Text(
                    index.toString().padLeft(2, '0'),
                  ),
                );
              }),
            ),
          ),
          Text(
            title,
            style: AppStyles.textStyle16.copyWith(color: AppColors.kColor3),
          ),
          SizedBox(width: 10.w),
        ],
      ),
    );
  }
}
