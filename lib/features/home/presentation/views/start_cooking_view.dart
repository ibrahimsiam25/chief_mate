import 'package:chief_mate/features/home/presentation/views/widgets/start_cooking_view_body.dart';
import 'package:flutter/material.dart';

class StartCookingView extends StatelessWidget {
  const StartCookingView({super.key});
static const routeName = '/start_cooking_view';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: StartCookingViewBody(),
    );
  }
}
