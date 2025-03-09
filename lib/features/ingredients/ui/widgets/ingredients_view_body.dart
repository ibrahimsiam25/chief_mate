import 'package:chief_mate/core/class/custom_sliver_app_bar_delegate.dart';
import 'package:chief_mate/core/constants/colors.dart';
import 'package:chief_mate/core/routes/routes_import.dart';
import 'package:chief_mate/features/ingredients/logic/get_all_warehouse/get_all_warehouse_cubit.dart';
import 'package:chief_mate/features/ingredients/logic/get_all_warehouse/get_all_warehouse_state.dart';
import 'package:chief_mate/features/ingredients/ui/widgets/ingredients_tab_bar_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/styles.dart';

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
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverToBoxAdapter(
              child: Padding(
                  padding: EdgeInsets.only(
                      left: 20.w, right: 20.w, top: 20.h, bottom: 10.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Склад',
                        style: TextStyle(
                            fontSize: 32.sp,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xffFFFFFF)),
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: () {
                          GoRouter.of(context)
                              .push(AddIngredientAndEquipmentView.routeName);
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 8.w, vertical: 5.h),
                          decoration: BoxDecoration(
                            color: AppColors.kColor4,
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.r)),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "категория",
                                style: AppStyles.textStyle16
                                    .copyWith(color: AppColors.kColor1),
                              ),
                              const SizedBox(width: 5),
                              Icon(
                                Icons.add,
                                color: AppColors.kColor1,
                                size: 18.sp,
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  )),
            ),
            SliverPersistentHeader(
              delegate: CustomSliverAppBarDelegate(
                TabBar(
                    controller: tabController,
                    isScrollable: true,
                    tabAlignment: TabAlignment.start,
                    labelPadding: EdgeInsets.only(left: 20.w, right: 0),
                    indicatorColor: AppColors.kColor4,
                    labelColor: AppColors.kColor4,
                    unselectedLabelColor: AppColors.kColor12,
                    indicatorPadding: EdgeInsets.only(bottom: 5.h),
                    dividerHeight: 0,
                    labelStyle: TextStyle(fontSize: 20.sp),
                    tabs: const [
                      Tab(
                        child: Text('Ингредиенты'),
                      ),
                      Tab(
                        child: Text('Оборудование'),
                      ),
                    ]),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: 20.h),
            ),
          ];
        },
        body: BlocBuilder<GetAllWarehouseCubit, GetAllWarehouseState>(
          builder: (context, state) {
            if (state is Success) {
              return TabBarView(controller: tabController, children: [
                IngredientsTabBarViewBody(
                    allWarehouseResponseModel: state.data),
                Container()
              ]);
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}
