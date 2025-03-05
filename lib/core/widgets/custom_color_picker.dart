import 'package:chief_mate/features/auth/data/data_source/static/colors_picker_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/choose_color_cubit.dart';
class CustomColorPicker extends StatelessWidget {
  const CustomColorPicker({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 4,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: List.generate(colorsPickerList.length, (index) {
        final color = colorsPickerList[index];
        return GestureDetector(
          onTap: () {
            context.read<ChooseColorCubit>().selectColor(index );
          },
          child: BlocBuilder<ChooseColorCubit, int>(
            builder: (context, selectedColor) {
              return Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.all(8.0),
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: color,
                    ),
                  ),
                  if (selectedColor == index )
                    const Icon(
                      Icons.check,
                      color: Colors.white,
                      size: 30,
                    ),
                ],
              );
            },
          ),
        );
      }),
    );
  }
}
