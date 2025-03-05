import 'package:chief_mate/core/widgets/custom_button.dart';
import 'package:chief_mate/core/widgets/custom_modal_progress.dart';
import 'package:chief_mate/features/auth/logic/create_work_space/create_work_space_cubit.dart';
import 'package:chief_mate/features/auth/presentation/views/widgets/choose_color_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/routes/routes_import.dart';
import '../../../../../core/cubit/choose_color_cubit.dart';
import '../../../../../core/widgets/show_error_dialog.dart';
import '../../../logic/create_work_space/create_work_space_state.dart';

class ChooseColorView extends StatelessWidget {
  const ChooseColorView({super.key, required this.workSpaceName});

  static String routeName = '/ChooseColorView';
  final String workSpaceName;

  @override
  Widget build(BuildContext context) {
    late int workSpaceColor;
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<ChooseColorCubit>(),
        ),
        BlocProvider(
          create: (context) => getIt<CreateWorkSpaceCubit>(),
        ),
      ],
      child: BlocConsumer<CreateWorkSpaceCubit, CreateWorkSpaceState>(
        listener: (context, state) {
          state.whenOrNull(
            error: (apiErrorModel) {
              showErrorDialog(context, apiErrorModel);
            },
            success: (response) {
              GoRouter.of(context)
                  .pushReplacement(PreviewWorkSpaceView.routeName, extra: {
                'workSpaceName': workSpaceName,
                'workSpaceColor': workSpaceColor,
              });
            },
          );
        },
        builder: (context, state) {
          return CustomModalProgress(
            isLoading: state is Loading ? true : false,
            child: Scaffold(
              bottomNavigationBar: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20),
                  child: BlocBuilder<ChooseColorCubit, int>(
                    builder: (context, selectedColor) {
                      return CustomButton(
                        onTap: () {
                          workSpaceColor = selectedColor-1;
                          context
                              .read<CreateWorkSpaceCubit>()
                              .emitCreateWorkSpaceStates(
                                  workSpaceName: workSpaceName,
                                  workSpaceColorId: selectedColor.toString());
                        },
                        buttonName: 'Продолжить',
                      );
                    },
                  ),
                ),
              ),
              body: const ChooseColorViewBody(),
            ),
          );
        },
      ),
    );
  }
}
