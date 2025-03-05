import 'package:chief_mate/features/auth/data/models/work_space_request_model.dart';
import 'package:chief_mate/features/auth/data/models/work_space_response_model.dart';
import 'package:chief_mate/features/auth/ui/widgets/preview_work_space_view_body.dart';
import 'package:flutter/material.dart';


class PreviewWorkSpaceView extends StatelessWidget {
  const PreviewWorkSpaceView(
      {super.key, required this.workSpaceModel});
 static const routeName = '/preview-work-space-view';
  final WorkSpaceResponseModel workSpaceModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PreviewWorkSpaceViewBody(
        workSpaceModel: workSpaceModel,
      ),
    );
  }
}
