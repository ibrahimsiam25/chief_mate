import 'package:chief_mate/features/home/presentation/views/widgets/in_work_status_view_body.dart';
import 'package:flutter/material.dart';

class InWorkStatusView extends StatelessWidget {
  const InWorkStatusView({super.key});
static const String routeName = '/InWorkStatusView';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: InWorkStatusViewBody(),
    );
  }
}
