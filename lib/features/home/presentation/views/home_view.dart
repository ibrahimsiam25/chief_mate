import 'package:chief_mate/core/constants/colors.dart';
import 'package:chief_mate/core/widgets/custom_add_button.dart';
import 'package:chief_mate/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:chief_mate/features/home/presentation/views/widgets/show_model_buttom_sheet_home_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const HomeViewBody(),
          Positioned(
            bottom: 90.h,
            right: 20.w,
            child: CustomAddButton(
              onTap: () {
                showModalBottomSheet(
                  backgroundColor: AppColors.kColor4,
                  context: context,
                  builder: (context) {
                    return const ShowModelButtomSheetHomeViewBody();
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
