import 'package:chief_mate/core/constants/icons.dart';
import 'package:chief_mate/features/home/presentation/views/add_to_work_view.dart';
import 'package:chief_mate/features/home/presentation/views/widgets/custom_instruction_item.dart';
import 'package:chief_mate/features/home/presentation/views/widgets/instruction_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InstructionsFoodDetailsViewBody extends StatelessWidget {
  const InstructionsFoodDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 50.h,
            ),
            const CustomInstructionItem(
              icon: AppIcons.hand1,
              text: 'Нажмите, чтобы перейти к следующему шагу',
            ),
            const CustomInstructionItem(
              icon: AppIcons.hand2,
              text: 'Свайпните вверх, чтобы перейти к следующему шагу',
            ),
            const CustomInstructionItem(
              icon: AppIcons.hand3,
              text: 'Свайпните вниз, чтобы перейти к предыдущему шагу',
            ),
            const CustomInstructionItem(
              icon: AppIcons.hand4,
              text: 'Свайпните влево, чтобы открыть список всех шагов',
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {
                showModalBottomSheet(
                  isScrollControlled: true,
                  useSafeArea: true,
                  context: context,
                  builder: (context) {
                    return const AddToWorkView();
                  },
                );
              },
              child: const InstructionButton(),
            ),
            SizedBox(
              height: 30.h,
            ),
          ],
        ),
      ),
    );
  }
}
