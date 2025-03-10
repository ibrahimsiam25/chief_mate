
import 'package:chief_mate/features/ingredients/ui/widgets/ingredients_view_body.dart';
import 'package:flutter/material.dart';

import '../../../../core/routes/routes_import.dart';
import '../../logic/get_all_warehouse/get_all_warehouse_cubit.dart';

class IngredientsView extends StatelessWidget {
  const IngredientsView({super.key, this.rebuildKey});
  final int? rebuildKey;
  static const String routeName = "/IngredientsView";
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
  providers: [
    BlocProvider(
      create: (context) => getIt<GetAllWarehouseCubit>()..getAllWarehouse(),
    ),
  
  ],
  child: Scaffold(
    key: ValueKey(rebuildKey),
    body: const IngredientsViewBody(),
  ),
);

  }
}
