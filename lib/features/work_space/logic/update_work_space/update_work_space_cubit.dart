import 'package:chief_mate/core/routes/routes_import.dart';
import 'package:chief_mate/features/work_space/logic/update_work_space/update_work_space_state.dart';

import '../../data/repos/update_work_space_repo.dart';

class UpdateWorkSpaceCubit extends Cubit<UpdateWorkSpaceState>{
  final UpdateWorkSpaceRepo _updateWorkSpaceRepo;

  UpdateWorkSpaceCubit(this._updateWorkSpaceRepo) : super(const UpdateWorkSpaceState.initial());

  void emitUpdateWorkSpaceStates(  {required int id ,required WorkSpaceRequestModel workSpaceRequestModel})async{
    emit(const UpdateWorkSpaceState.loading());
    final response = await _updateWorkSpaceRepo.updateWorkSpace(
        id: id, workSpaceRequestModel: workSpaceRequestModel
    );
    response.when(success: (updateWorkSpaceResponse) async {
      emit(UpdateWorkSpaceState.success(updateWorkSpaceResponse));
    }, failure: (apiErrorModel) {
      emit(UpdateWorkSpaceState.error(apiErrorModel));
    });
  }
}