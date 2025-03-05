import 'package:chief_mate/core/functions/conver_to_int.dart';
import 'package:chief_mate/core/widgets/build_message_bar.dart';
import 'package:chief_mate/core/widgets/custom_button.dart';
import 'package:chief_mate/core/widgets/custom_modal_progress.dart';
import 'package:chief_mate/features/auth/data/data_source/static/colors_picker_list.dart';
import 'package:chief_mate/features/work_space/ui/widgets/edit_work_space_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/cubit/choose_color_cubit.dart';
import '../../../../core/functions/get_color_index.dart';
import '../../../../core/routes/routes_import.dart';
import '../../../../core/widgets/show_error_dialog.dart';
import '../../../auth/data/models/work_space_response_model.dart';
import '../../logic/update_work_space/update_work_space_cubit.dart';
import '../../logic/update_work_space/update_work_space_state.dart';

class EditWorkSpaceView extends StatelessWidget {
  const EditWorkSpaceView({super.key, required this.workSpaceModel});
  static const routeName = '/editWorkSpaceView';
  final WorkSpaceResponseModel workSpaceModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<ChooseColorCubit>(
              param1: getColorIndex(
                  Color(convertToInt(workSpaceModel.data!.colorCode)))),
        ),
        BlocProvider(
          create: (context) => getIt<UpdateWorkSpaceCubit>(),
        ),
      ],
      child: BlocConsumer<UpdateWorkSpaceCubit, UpdateWorkSpaceState>(
        listener: (context, state) {
          state.whenOrNull(
            error: (apiErrorModel) {
              showErrorDialog(context, apiErrorModel);
            },
            success: (response) {
              buildMessageBar(context, response.message);
              if (response.data != null) {
                GoRouter.of(context).go(WorkSpaceView.routeName, extra: response);
              }else{
                GoRouter.of(context).go(WorkSpaceView.routeName, extra: workSpaceModel );
              }
            },
          );
        },
        builder: (context, state) {
          return BlocBuilder<ChooseColorCubit, int>(
            builder: (context, chooseColorindex) {
              return CustomModalProgress(
                isLoading: state is Loading ? true : false,
                child: Stack(
                  children: [
                    EditWorkSpaceBody(
                        workSpaceModel: WorkSpaceResponseModel(
                            data: WorkspaceData(
                                name: workSpaceModel.data!.name,
                                colorCode:
                                    "0x${colorsPickerList[chooseColorindex].value.toRadixString(16).toUpperCase()}"))),
                    Positioned(
                      right: 20.w,
                      bottom: 20.h,
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Padding(
                          padding: EdgeInsets.only(left: 40.w),
                          child: CustomButton(
                            onTap: () {
                              context
                                  .read<UpdateWorkSpaceCubit>()
                                  .emitUpdateWorkSpaceStates(
                                      id: workSpaceModel.data!.id!,
                                      workSpaceRequestModel:
                                          WorkSpaceRequestModel(
                                              name: workSpaceModel.data!.name,
                                              colorId: (chooseColorindex + 1)
                                                  .toString()));
                            },
                            buttonName: 'Сохранить изменения',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    ));
  }
}
