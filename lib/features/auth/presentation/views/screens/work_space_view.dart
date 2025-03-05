import 'package:chief_mate/features/auth/data/models/create_work_space_request_model.dart';
import 'package:chief_mate/features/auth/presentation/views/widgets/work_space_view_body.dart';
import 'package:flutter/material.dart';

class WorkSpaceView extends StatelessWidget {
  const WorkSpaceView({super.key, required this.workSpaceModel});
static const String routeName = '/workSpaceView';
final CreateWorkSpaceRequestModel workSpaceModel;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: WorkSpaceViewBody(
        workSpaceModel: workSpaceModel,
      ),
    );
  }
}
