import 'package:chief_mate/features/home/presentation/views/widgets/completed_status_view_body.dart';
import 'package:flutter/material.dart';

class CompletedStatusView extends StatelessWidget {
  const CompletedStatusView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CompletedStatusViewBody(),
    );
  }
}
