import 'package:chief_mate/core/widgets/custom_button.dart';
import 'package:chief_mate/features/home/presentation/views/widgets/food_item_details_home_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/routes/routes_import.dart';

class FoodItemDetailsHomeView extends StatelessWidget {
  const FoodItemDetailsHomeView({super.key});
static const String routeName = '/foodItemDetailsHomeView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        padding: EdgeInsets.only(left: 30.w),
        child: CustomButton(
          buttonName: 'Взять в работу',
          onTap: () {
            GoRouter.of(context)
                .pushReplacement(InstructionsFoodDetailsView.routeName);
            // showModalBottomSheet(
            //   isScrollControlled: true,
            //   useSafeArea: true,
            //   context: context,
            //   builder: (context) {
            //     return const AddToWorkView();
            //   },
            // );
          },
        ),
      ),
      body: const FoodItemDetailsHomeViewBody(),
    );
  }
}
