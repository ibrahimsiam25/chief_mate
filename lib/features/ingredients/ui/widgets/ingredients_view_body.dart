import 'package:chief_mate/core/class/custom_sliver_app_bar_delegate.dart';
import 'package:chief_mate/core/constants/colors.dart';
import 'package:chief_mate/core/networking/api_constants.dart';
import 'package:chief_mate/core/routes/routes_import.dart';
import 'package:chief_mate/features/ingredients/logic/get_all_warehouse/get_all_warehouse_cubit.dart';
import 'package:chief_mate/features/ingredients/logic/get_all_warehouse/get_all_warehouse_state.dart';
import 'package:chief_mate/features/ingredients/ui/widgets/ingredients_tab_bar_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/styles.dart';
import '../../../../core/widgets/custom_add_button.dart';
import '../../data/models/all_warehouse_response_model.dart';

class IngredientsViewBody extends StatefulWidget {
  const IngredientsViewBody({super.key});

  @override
  State<IngredientsViewBody> createState() => _IngredientsViewBodyState();
}

class _IngredientsViewBodyState extends State<IngredientsViewBody>
    with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: NestedScrollView(
        headerSliverBuilder: _buildSliverHeader,
        body: BlocBuilder<GetAllWarehouseCubit, GetAllWarehouseState>(
          builder: _buildBody,
        ),
      ),
    );
  }

  /// Builds the body of the view
  Widget _buildBody(BuildContext context, GetAllWarehouseState state) {
    if (state is Success) {
      final filteredData = _filterIngredients(state.data.data);
      return Stack(
        children: [
          TabBarView(
            controller: tabController,
            children: [
              IngredientsTabBarViewBody(
                allWarehouseResponseModel: AllWarehouseResponseModel(
                  code: state.data.code,
                  data: filteredData,
                ),
              ),
              Container(),
            ],
          ),
          _buildAddButton(state.data),
        ],
      );
    } else {
      return const Center(child: CircularProgressIndicator());
    }
  }

  /// Builds the floating add button
  Widget _buildAddButton(AllWarehouseResponseModel data) {
    return Positioned(
      bottom: 90.h,
      right: 20.w,
      child: CustomAddButton(
        onTap: () =>
            GoRouter.of(context).push(AddIngredientView.routeName, extra: data),
      ),
    );
  }

  /// Builds the sliver header for the view
  List<Widget> _buildSliverHeader(
      BuildContext context, bool innerBoxIsScrolled) {
    return [
      _buildTitleRow(context),
      _buildTabBar(),
      SliverToBoxAdapter(child: SizedBox(height: 20.h)),
    ];
  }

  /// Builds the title row with a button
  Widget _buildTitleRow(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
        child: Row(
          children: [
            Text(
              'Склад',
              style: TextStyle(
                fontSize: 32.sp,
                fontWeight: FontWeight.w500,
                color: const Color(0xffFFFFFF),
              ),
            ),
            const Spacer(),
            _buildCategoryButton(context),
          ],
        ),
      ),
    );
  }

  /// Builds the category button
  Widget _buildCategoryButton(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          GoRouter.of(context).push(AddIngredientAndEquipmentView.routeName),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 5.h),
        decoration: BoxDecoration(
          color: AppColors.kColor4,
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Row(
          children: [
            Text(
              "категория",
              style: AppStyles.textStyle16.copyWith(color: AppColors.kColor1),
            ),
            const SizedBox(width: 5),
            Icon(Icons.add, color: AppColors.kColor1, size: 18.sp),
          ],
        ),
      ),
    );
  }

  /// Builds the tab bar
  Widget _buildTabBar() {
    return SliverPersistentHeader(
      delegate: CustomSliverAppBarDelegate(
        TabBar(
          controller: tabController,
        // isScrollable: true,
          indicatorColor: AppColors.kColor4,
          labelColor: AppColors.kColor4,
          unselectedLabelColor: AppColors.kColor12,
          indicatorPadding: EdgeInsets.only(bottom: 5.h),
          dividerHeight: 0,
          
          labelStyle: TextStyle(fontSize: 20.sp),
          tabs: const [
            Tab(child: Text('Ингредиенты')),
            Tab(child: Text('Оборудование')),
          ],
        ),
      ),
    );
  }

  /// Filters only ingredients from the warehouse data
  List<WarehouseData>? _filterIngredients(List<WarehouseData>? data) {
    return data?.where((item) => item.type == ApiConstants.ingredient).toList();
  }
}
