import 'package:chief_mate/features/work_space/ui/widgets/production_view_body.dart';
import 'package:flutter/material.dart';

class ProductionView extends StatelessWidget {
  const ProductionView({super.key});
static const String routeName = '/productionView';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ProductionViewBody(),
    );
  }
}
