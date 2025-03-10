import 'package:chief_mate/core/constants/icons.dart';
import 'package:chief_mate/core/widgets/custom_text_field.dart';
import 'package:chief_mate/core/widgets/custom_add_photo.dart';
import 'package:chief_mate/features/recipes/presemtation/views/widgets/add_new_step_button.dart';
import 'package:chief_mate/features/recipes/presemtation/views/widgets/instructions_view_app_bar.dart';
import 'package:chief_mate/features/recipes/presemtation/views/widgets/select_timer_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class AddStepView extends StatelessWidget {
  const AddStepView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
          child: Column(
            children: [
              const InstructionsViewAppBar(),
              SizedBox(height: 20.h),
              CustomAddPhoto(
                height: 400.h,
              ),
              const CustomTextField(
                hintText:
                    'Опишите процесс готовки, действия и используемые ингредиенты',
                fillColor: Colors.transparent,
                borderColor: Colors.transparent,
                minLines: 2,
                maxLines: 10,
              ),
              SizedBox(height: 50.h),
              Row(
                children: [
                  AddNewStepButton(
                    onTap: () {},
                    icon: AppIcons.add,
                    text: 'Новый шаг',
                  ),
                  SizedBox(width: 15.w),
                  CupertinoButton(
                      child: SvgPicture.asset(AppIcons.timeCon),
                      onPressed: () {
                        showModalBottomSheet(
                          useSafeArea: true,
                          context: context,
                          builder: (context) {
                            return const SelectTimerView();
                          },
                        );
                      }),
                  SizedBox(width: 15.w),
                  GestureDetector(
                    onTap: () {},
                    child: SvgPicture.asset(AppIcons.shapes),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
