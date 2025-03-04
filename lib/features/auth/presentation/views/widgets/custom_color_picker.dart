import 'package:chief_mate/core/constants/prefs.dart';
import 'package:chief_mate/features/auth/data/data_source/static/colors_picker_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class CustomColorPicker extends StatefulWidget {
  const CustomColorPicker({super.key});

  @override
  State<CustomColorPicker> createState() => _CustomColorPickerState();
}

class _CustomColorPickerState extends State<CustomColorPicker> {
  Color? pickedColor = const Color(0xffFF2D5E);

  @override
  void initState() {
    super.initState();
  }

  @override
 Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 4, // عدد الأعمدة
      shrinkWrap: true, // لجعل الـ GridView يتكيّف مع محتواه
      physics:const NeverScrollableScrollPhysics(), // تعطيل الـ scroll
      children: List.generate(colorsPickerList.length, (index) {
        final color = colorsPickerList[index];
        return GestureDetector(
          onTap: () {
            setState(() {
              pickedColor = color;
              // حفظ اللون في SharedPreferences أو أي مكان آخر إذا كنت تستخدمه
              // prefs.setInt(Prefs.workSpaceColor, color.value);
            });
          },
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(8.0),
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle, // جعل الشكل دائريًا
                  color: color,
                ),
              ),
              if (pickedColor == color)
                Icon(
                  Icons.check,
                  color: Colors.white,
                  size: 30,
                ),
            ],
          ),
        );
      }),
    );
  }
}
