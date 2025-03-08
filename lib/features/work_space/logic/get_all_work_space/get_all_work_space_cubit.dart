
import 'package:chief_mate/features/work_space/data/repos/all_work_spacce_repo.dart';
import 'package:chief_mate/features/work_space/logic/get_all_work_space/get_all_work_space_state.dart';

import '../../../../core/routes/routes_import.dart';

class GetAllWorkSpaceCubit extends Cubit<GetAllWorkSpaceState> {
  final AllWorkSpaceRepo _allWorkSpacceRepo;
  GetAllWorkSpaceCubit(this._allWorkSpacceRepo)
      : super(const GetAllWorkSpaceState.initial());
  void getAllWorkSpace() async {
    emit(const GetAllWorkSpaceState.loading());
    final response = await _allWorkSpacceRepo.getAllWorkSpace();
    response.when(success: (response) {
      emit(GetAllWorkSpaceState.sucess(response));
    }, failure: (error) {
      emit(GetAllWorkSpaceState.error(error));
    });
  }
}
