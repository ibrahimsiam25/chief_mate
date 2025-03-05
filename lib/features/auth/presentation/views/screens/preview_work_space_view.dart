import 'package:chief_mate/features/auth/presentation/views/widgets/preview_work_space_view_body.dart';
import 'package:flutter/material.dart';

class PreviewWorkSpaceView extends StatelessWidget {
  const PreviewWorkSpaceView(
      {super.key, required this.workSpaceName, required this.workSpaceColor});
  static const routeName = '/preview-work-space-view';
  final String workSpaceName;
  final int workSpaceColor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PreviewWorkSpaceViewBody(
        workSpaceName: workSpaceName,
        workSpaceColor: workSpaceColor,
      ),
    );
  }
}
