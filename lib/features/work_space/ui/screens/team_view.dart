import 'package:chief_mate/features/work_space/ui/widgets/team_view_body.dart';
import 'package:flutter/material.dart';

class TeamView extends StatelessWidget {
  const TeamView({super.key});
static const String routeName = '/teamView';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: TeamViewBody(),
    );
  }
}
