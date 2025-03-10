import 'package:chief_mate/core/constants/colors.dart';
import 'package:chief_mate/core/constants/icons.dart';
import '../../../../core/routes/routes.dart';
import 'package:chief_mate/core/constants/styles.dart';
import 'package:chief_mate/features/work_space/ui/widgets/custom_team_view_drob_down_button.dart';
import 'package:chief_mate/features/work_space/ui/widgets/show_model_bottom_sheet_team_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:svg_flutter/svg.dart';

import '../../../auth/data/models/work_space_response_model.dart';
import '../../../auth/ui/screens/work_space_view.dart';

class CustomTeamViewAppBar extends StatelessWidget {
  const CustomTeamViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
          GoRouter.of(context).push(WorkSpaceView.routeName,
                extra: WorkSpaceResponseModel(
                  data: WorkspaceData(
                    id: 1,
                    name: "CustomTeamViewAppBar",
                    colorCode: "0xFFE0E0E0",
                  ),
                ));
          },
          child: SvgPicture.asset(AppIcons.arrowBack),
        ),
        Text(
          'Команда',
          style: AppStyles.textStyle20,
        ),
        GestureDetector(
          onTap: () {
            createModelbottomSheet(context);
          },
          child: SvgPicture.asset(
            AppIcons.add,
            color: AppColors.kColor4,
            height: 17.h,
            width: 17.w,
          ),
        ),
      ],
    );
  }

  Future<dynamic> createModelbottomSheet(BuildContext context) {
    return showModalBottomSheet(
      useSafeArea: true,
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return const Scaffold(
          floatingActionButton: CustomTeamViewDrobDownButton(),
          body: SafeArea(
            child: ShowModelBottomSheetTeamViewBody(),
          ),
        );
      },
    );
  }
}
