
import 'package:chief_mate/features/work_space/logic/get_work_space_by_id/get_work_space_by_id_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/repos/get_work_space_by_id_repo.dart';

class GetWorkSpaceByIdCubit extends Cubit<GetWorkSpaceByIdState> {
  final GetWorkSpaceByIdRepo _getWorkSpaceByIdRepo;

  GetWorkSpaceByIdCubit(this._getWorkSpaceByIdRepo)
      : super(const GetWorkSpaceByIdState.initial());
  void getWorkSpaceById({required int id}) async {
    emit(const GetWorkSpaceByIdState.loading());
    final result = await _getWorkSpaceByIdRepo.getWorkSpaceById(id: id);
    result.when(success: (data) {
      emit(GetWorkSpaceByIdState.success(data));
    }, failure: (error) {
      emit(GetWorkSpaceByIdState.error(error));
    });
  }
}
