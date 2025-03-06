import 'package:chief_mate/features/home/presentation/views/widgets/calender_view_body.dart';
import 'package:flutter/material.dart';

class CalenderView extends StatelessWidget {
  const CalenderView({super.key});
static const String routeName = '/calenderView';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CalenderViewBody(),
    );
  }
}
