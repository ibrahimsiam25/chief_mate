import 'package:chief_mate/features/auth/presentation/views/widgets/create_work_space_view_body.dart';
import 'package:flutter/material.dart';

class CreateWorkSpaceView extends StatelessWidget {
  const CreateWorkSpaceView({super.key});
static String routeName = "/create_work_space_view";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CreateWorkSpaceViewBody(),
    );
  }
}
