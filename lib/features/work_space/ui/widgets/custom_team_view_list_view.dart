import 'package:chief_mate/features/work_space/ui/widgets/custom_worker_info_team_view.dart';
import 'package:flutter/material.dart';

class CustomTeamViewListView extends StatelessWidget {
  const CustomTeamViewListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 5,
      itemBuilder: (context, index) => const CustomWorkerInfoTeamView(),
    );
  }
}
