import 'dart:io';

import 'package:chief_mate/core/class/custom_sliver_app_bar_delegate.dart';
import 'package:chief_mate/core/constants/colors.dart';
import 'package:chief_mate/core/constants/styles.dart';
import 'package:chief_mate/features/ingredients/ui/widgets/add_ingredient_tap_bar_view.dart';
import 'package:chief_mate/features/ingredients/ui/widgets/custom_add_ingredient_view_app_bar.dart';
import 'package:chief_mate/core/widgets/custom_add_photo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../data/models/all_warehouse_response_model.dart';

class AddIngredientViewBody extends StatefulWidget {
  const AddIngredientViewBody({super.key, required this.typeOfIngredient, required this.name, required this.description, required this.image, required this.quantity, required this.unit, required this.formKeyIngredient, required this.autovalidateModeIngredient, required this.formKeyEquipment, required this.autovalidateModeEquipment, required this.tabController, required this.ingredientData, required this.equipmentData, });
   final Function(String?) typeOfIngredient;
   final Function(String?) name;
   final Function(String?) description;
   final Function(File?) image;
   final Function(String?) quantity;
   final Function(String?) unit;
   final GlobalKey<FormState> formKeyIngredient;
  final AutovalidateMode autovalidateModeIngredient;
  final GlobalKey<FormState> formKeyEquipment;
  final AutovalidateMode autovalidateModeEquipment;
final List<WarehouseData> ingredientData;
final List<WarehouseData> equipmentData;
  
final TabController tabController;
  @override
  State<AddIngredientViewBody> createState() => _AddIngredientViewBodyState();
}

class _AddIngredientViewBodyState extends State<AddIngredientViewBody>
 {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      child: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            const SliverToBoxAdapter(
              child: CustomAddIngredientViewAppBar(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: 16.h),
            ),
            const SliverToBoxAdapter(
              child: CustomAddPhoto(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: 20.h),
            ),
            SliverPersistentHeader(
              delegate: CustomSliverAppBarDelegate(
                TabBar(
                    controller: widget.tabController,
                    isScrollable: true,
                    tabAlignment: TabAlignment.start,
                    labelPadding: EdgeInsets.only(right: 16.w),
                    indicatorColor: AppColors.kColor4,
                    labelColor: AppColors.kColor4,
                    unselectedLabelColor: AppColors.kColor12,
                    indicatorPadding: EdgeInsets.only(bottom: 5.h),
                    dividerHeight: 0,
                    tabs: [
                      Tab(
                        child:
                            Text('Ингредиенты', style: AppStyles.textStyle20),
                      ),
                      Tab(
                        child:
                            Text('Оборудование', style: AppStyles.textStyle20),
                      ),
                    ]),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: 40.h),
            ),
          ];
        },
        body: AddIngredientTapBarView(
          tabController: widget.tabController,
          typeOfIngredient: widget.typeOfIngredient,
          name: widget.name,
          description: widget.description,
          quantity: widget.quantity,
          unit: widget.unit,
          formKeyIngredient: widget.formKeyIngredient,
          autovalidateModeIngredient: widget.autovalidateModeIngredient,
          formKeyEquipment: widget.formKeyEquipment,
          autovalidateModeEquipment: widget.autovalidateModeEquipment,
          ingredientData: widget.ingredientData,
          equipmentData: widget.equipmentData,
        ),
      ),
    ));
  }
}
