import 'package:chief_mate/core/constants/colors.dart';
import 'package:chief_mate/core/constants/icons.dart';
import 'package:chief_mate/core/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';


class CustomDropdownButton extends StatefulWidget {
  final List<String> items;
  final String initialValue;
  final ValueChanged<String> onSelected;

  const CustomDropdownButton({
    super.key,
    required this.items,
    required this.initialValue,
    required this.onSelected,
  });

  @override
  State<CustomDropdownButton> createState() => _CustomDropdownButtonState();
}

class _CustomDropdownButtonState extends State<CustomDropdownButton> {
  late String selectedText;

  @override
  void initState() {
    super.initState();
    selectedText = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 3.h),
      decoration: BoxDecoration(
        color: AppColors.kColor5,
        borderRadius: BorderRadius.circular(4.0),
        border: Border.all(
          color: AppColors.kColor11,
          width: 1,
        ),
      ),
      child: DropdownButton<String>(
        dropdownColor: AppColors.kColor5,
        isExpanded: true,
        value: selectedText,
        icon: SvgPicture.asset(
          AppIcons.arrowDown,
          height: 20.h,
          width: 20.w,
        ),
        iconSize: 24,
        elevation: 16,
        style: AppStyles.textStyle16,
        underline: Container(),
        onChanged: (String? newValue) {
          if (newValue != null) {
            setState(() {
              selectedText = newValue;
            });
            widget.onSelected(newValue); // Call the callback function
          }
        },
        items: widget.items
            .map<DropdownMenuItem<String>>((String value) => DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                ))
            .toList(),
      ),
    );
  }
}
