import 'dart:io';

import 'package:chief_mate/features/ingredients/logic/create_ingredient/create_ingredient_state.dart';

import '../../../../core/routes/routes_import.dart';
import '../../data/models/ingredient_request_model.dart';
import '../../data/repos/ingredient_repo.dart';

class CreateIngredientCubit extends Cubit<CreateIngredientState> {
  final IngredientRepo _createIngredientRepo;
  CreateIngredientCubit(this._createIngredientRepo)
      : super(const CreateIngredientState.initial());

  Future<void> createIngredient({
    required String name,
    required File cover,
    required String description,
    required String unit,
    required String quantity,
    required String warehouseId,
  }) async {
    emit(const CreateIngredientState.loading());
    final result = await _createIngredientRepo.createIngredient(
    ingredientRequestModel: IngredientRequestModel(
      name: name,
      cover: cover,
      description: description,
      unit: unit,
      quantity: quantity,
      warehouseId: warehouseId,
    ),
    );
    result.when(
      success: (data) {
        emit(CreateIngredientState.success(data));
      },
      failure: (error) {
        emit(CreateIngredientState.error(error));
      },
    );
  }
}