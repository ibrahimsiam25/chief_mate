import 'package:chief_mate/features/auth/data/models/work_space_response_model.dart';
import 'package:chief_mate/features/auth/ui/widgets/work_space_view_body.dart';
import 'package:flutter/material.dart';

class WorkSpaceView extends StatelessWidget {
  const WorkSpaceView({super.key, required this.workSpaceModel});
static const String routeName = '/workSpaceView';
final WorkSpaceResponseModel workSpaceModel;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: WorkSpaceViewBody(
        workSpaceModel: workSpaceModel,
      ),
    );
  }
}
