


import 'package:chief_mate/features/ingredients/logic/create_warehouse/create_warehouse_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/repos/create_warehouse_repo.dart';

class CreateWarehouseCubit extends Cubit<CreateWarehouseState> {
  final CreateWarehouseRepo _createWarehouseRepo;
  CreateWarehouseCubit(this._createWarehouseRepo)
      : super(const CreateWarehouseState.initial());

  Future<void> createWarehouse({
    required String title,
    required String type,
  }) async {
    emit(const CreateWarehouseState.loading());
    final result =
        await _createWarehouseRepo.createWarehouse(title: title, type: type);
    result.when(
      success: (data) {
        emit(CreateWarehouseState.success(data));
      },
      failure: (error) {
        emit(CreateWarehouseState.error(error));
      },
    );
  }
}
