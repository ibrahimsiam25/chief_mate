import 'package:chief_mate/core/constants/colors.dart';
import 'package:chief_mate/core/constants/icons.dart';
import 'package:chief_mate/features/home/presentation/views/widgets/custom_add_status_view_app_bar.dart';
import 'package:chief_mate/core/widgets/custom_text_field.dart';
import 'package:chief_mate/features/home/presentation/views/widgets/custom_filter_add_status_view_list_view.dart';
import 'package:chief_mate/features/home/presentation/views/widgets/custom_profile_worker_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class AddStatusViewBody extends StatelessWidget {
  const AddStatusViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: SizedBox(height: 10.h),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: const CustomAddStatusViewAppBar(),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 30.h),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: CustomTextField(
                hintText: 'Поиск по ингредиентам',
                prefixIcon: Padding(
                  padding: EdgeInsets.only(left: 20.w, right: 12.w),
                  child: SvgPicture.asset(
                    AppIcons.search,
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 20.h),
          ),
          const SliverToBoxAdapter(
            child: CustomFilterAddStatusViewListView(),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 20.h),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Text(
                'Холодный цех',
                style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.kColor4,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 20.h),
          ),
          SliverList.builder(
            itemCount: 10,
            itemBuilder: (context, index) => const CustomProfileWorkerInfo(),
          )
        ],
      ),
    );
  }
}
