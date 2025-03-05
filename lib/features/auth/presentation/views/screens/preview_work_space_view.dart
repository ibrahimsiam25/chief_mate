import 'package:chief_mate/features/auth/data/models/create_work_space_request_model.dart';
import 'package:chief_mate/features/auth/presentation/views/widgets/preview_work_space_view_body.dart';
import 'package:flutter/material.dart';

import '../../../../../core/functions/conver_to_int.dart';

class PreviewWorkSpaceView extends StatelessWidget {
  const PreviewWorkSpaceView(
      {super.key, required this.workSpaceModel});
 static const routeName = '/preview-work-space-view';
  final CreateWorkSpaceRequestModel workSpaceModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PreviewWorkSpaceViewBody(
        workSpaceModel: workSpaceModel,
      ),
    );
  }
}
