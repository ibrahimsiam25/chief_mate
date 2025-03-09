import 'package:chief_mate/features/auth/ui/widgets/work_space_view_body.dart';
import 'package:flutter/material.dart';

import '../../../../core/routes/routes_import.dart';
import '../../../work_space/logic/deleted_work_space/deleted_work_space_cubit.dart';

class WorkSpaceView extends StatefulWidget {
  const WorkSpaceView({super.key, required this.workSpaceModel});
  static const String routeName = '/workSpaceView';
  final WorkSpaceResponseModel workSpaceModel;

  @override
  State<WorkSpaceView> createState() => _WorkSpaceViewState();
}

class _WorkSpaceViewState extends State<WorkSpaceView> {
  late GetWorkSpaceByIdCubit getWorkSpaceByIdCubit;

  @override
  void initState() {
    super.initState();
    getWorkSpaceByIdCubit = getIt<GetWorkSpaceByIdCubit>();
    getWorkSpaceByIdCubit.getWorkSpaceById(id: widget.workSpaceModel.data!.id!);
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<DeletedWorkSpaceCubit>()),
      ],
      child: Scaffold(
        body: WorkSpaceViewBody(workSpaceModel: widget.workSpaceModel),
      ),
    );
  }
}
