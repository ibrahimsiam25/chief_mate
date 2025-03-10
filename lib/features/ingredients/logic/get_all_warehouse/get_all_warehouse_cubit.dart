import 'package:chief_mate/features/ingredients/logic/get_all_warehouse/get_all_warehouse_state.dart';

import '../../../../core/routes/routes_import.dart';
import '../../data/repos/get_all_warehouse_repo_model.dart';

class GetAllWarehouseCubit extends Cubit<GetAllWarehouseState> {
  final GetAllWarehouseRepo _getAllWarehouseRepo;
  GetAllWarehouseCubit(this._getAllWarehouseRepo)
      : super(const GetAllWarehouseState.initial());

  Future<void> getAllWarehouse(String type) async {
    emit(const GetAllWarehouseState.loading());
    final result = await _getAllWarehouseRepo.getAllWarehouse(type);
    result.when(
      success: (data) {
        emit(GetAllWarehouseState.success(data));
      },
      failure: (error) {
        emit(GetAllWarehouseState.error(error));
      },
    );
  }
}
