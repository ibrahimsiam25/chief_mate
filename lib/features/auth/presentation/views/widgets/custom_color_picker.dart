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
    return BlockPicker(
      pickerColor: pickedColor,
      onColorChanged: (color) {
        setState(() {
          pickedColor = color;
          prefs.setInt(Prefs.workSpaceColor, color.value);
        });
      },
      availableColors: colorsPickerList,
    );
  }
}
