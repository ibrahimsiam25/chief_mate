import 'package:chief_mate/core/routes/routes_import.dart';
import 'package:chief_mate/core/widgets/custom_modal_progress.dart';
import 'package:chief_mate/features/ingredients/logic/create_warehouse/create_warehouse_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../../core/widgets/show_error_dialog.dart';
import '../widgets/add_ingredient_and_equipment_view_body.dart';

class AddIngredientAndEquipmentView extends StatefulWidget {
  const AddIngredientAndEquipmentView({super.key});
  static const String routeName = "/AddComponentsAndEquipment";

  @override
  State<AddIngredientAndEquipmentView> createState() =>
      _AddIngredientAndEquipmentViewState();
}

class _AddIngredientAndEquipmentViewState
    extends State<AddIngredientAndEquipmentView> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  AutovalidateMode _autovalidateMode = AutovalidateMode.disabled;
  String _type = 'ингредиент';
  late String _title;

  void _onSubmit() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      if (_type == 'ингредиент') {
        _type = 'ingredient';
      } else {
        _type = 'equipment';
      }
      context
          .read<CreateWarehouseCubit>()
          .createWarehouse(title: _title, type: _type);
    } else {
      setState(() {
        _autovalidateMode = AutovalidateMode.always;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CreateWarehouseCubit, CreateWarehouseState>(
      listener: (context, state) {
        state.whenOrNull(
          success: (response) {
            GoRouter.of(context).pushReplacement(IngredientsView.routeName,
                extra: DateTime.now().millisecondsSinceEpoch);
          },
          error: (e) {
            showErrorDialog(context, e);
          },
        );
      },
      builder: (context, state) {
        return CustomModalProgress(
          isLoading: state is Loading,
          child: Scaffold(
            floatingActionButton: Padding(
              padding: EdgeInsets.only(left: 30.w),
              child: CustomButton(
                buttonName: 'Добавить',
                onTap: _onSubmit,
              ),
            ),
            body: AddIngredientAndEquipmentViewBody(
              formKey: _formKey,
              autovalidateMode: _autovalidateMode,
              onChanged: (value) => _title = value!,
              onSelected: (selected) => _type = selected,
            ),
          ),
        );
      },
    );
  }
}
