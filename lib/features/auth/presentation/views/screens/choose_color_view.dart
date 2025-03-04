import '../../../../../core/routes/routes.dart';
import 'package:chief_mate/core/widgets/custom_button.dart';
import 'package:chief_mate/features/auth/presentation/views/widgets/choose_color_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ChooseColorView extends StatelessWidget {
  const ChooseColorView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 20),
                child: CustomButton(
                  onTap: () {
                    GoRouter.of(context).push(AppRoutes.kCreateWorkSpaceView);
                  },
                  buttonName: 'Продолжить',
                ),
              ),
            )
,
      body: const ChooseColorViewBody(),
    );
  }
}
