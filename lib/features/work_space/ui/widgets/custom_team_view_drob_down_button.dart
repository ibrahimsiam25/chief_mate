import 'package:chief_mate/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class CustomTeamViewDrobDownButton extends StatefulWidget {
  const CustomTeamViewDrobDownButton({super.key});

  @override
  State<CustomTeamViewDrobDownButton> createState() =>
      _CustomTeamViewDrobDownButtonState();
}

class _CustomTeamViewDrobDownButtonState
    extends State<CustomTeamViewDrobDownButton> {
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formState,
      child: Container(
        padding: EdgeInsets.only(left: 30.w),
        child: CustomButton(
          buttonName: 'Отправить приглашение',
          onTap: () {
            if (formState.currentState!.validate()) {}
            GoRouter.of(context).pop();
          },
        ),
      ),
    );
  }
}
