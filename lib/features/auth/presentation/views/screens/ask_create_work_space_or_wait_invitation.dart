import 'package:chief_mate/features/auth/presentation/views/screens/work_space_name_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:svg_flutter/svg_flutter.dart';

import '../../../../../core/constants/images.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../widgets/add_phone_number_view_app_bar.dart';

class AskCreateWorkSpaceOrWaitInvitation extends StatelessWidget {
  const AskCreateWorkSpaceOrWaitInvitation({super.key});
  static String routeName = '/ask_create_work_space_or_wait_invitation';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
              SvgPicture.asset(
              AppImages.starter,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover
            ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const CustomAuthAppBar(
                    
                  ),
                
                  const Spacer(
                    flex: 8,
                  ),
                  CustomButton(
                    onTap: () {
                   GoRouter.of(context).push(WorkSpaceNameView.routeName);
                    },
                    buttonName: 'создать рабочее пространство',
                  ),
                  SizedBox(height: 40.h),
                  CustomButton(
                    onTap: () {
                    
                    },
                    buttonName: 'Дождитесь приглашения',
                  ),
                  const Spacer(
                    flex: 2,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
