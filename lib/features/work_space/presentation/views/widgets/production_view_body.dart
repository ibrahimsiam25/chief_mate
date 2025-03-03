import 'package:chief_mate/features/work_space/presentation/views/widgets/custom_add_production.dart';
import 'package:chief_mate/features/work_space/presentation/views/widgets/custom_production_view_app_bar.dart';
import 'package:chief_mate/features/work_space/presentation/views/widgets/custom_production_view_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductionViewBody extends StatelessWidget {
  const ProductionViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        child: Column(
          children: [
            const CustomProductionViewAppBar(),
            SizedBox(height: 15.h),
            const CustomAddProduction(),
            const Expanded(
              child: CustomProductionViewListView(),
            )
          ],
        ),
      ),
    );
  }
}
