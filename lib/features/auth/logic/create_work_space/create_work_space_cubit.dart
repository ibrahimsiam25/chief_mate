import 'package:chief_mate/features/auth/data/repos/create_work_space_repo.dart';
import 'package:chief_mate/features/auth/logic/create_work_space/create_work_space_state.dart';

import '../../../../core/routes/routes_import.dart';
import '../../data/models/create_work_space_request_model.dart';

class CreateWorkSpaceCubit extends Cubit<CreateWorkSpaceState> 
{
  final CreateWorkSpaceRepo _createWorkSpaceRepo;

  CreateWorkSpaceCubit(this._createWorkSpaceRepo) : super(const CreateWorkSpaceState.initial());

  void emitCreateWorkSpaceStates({required String workSpaceName, required String workSpaceColorId})async{
    emit(const CreateWorkSpaceState.loading());
    final response = await _createWorkSpaceRepo.createWorkSpace(createWorkSpaceRequestModel: CreateWorkSpaceRequestModel(name: workSpaceName, colorId: workSpaceColorId),);
    response.when(success: (createWorkSpaceResponse) async {
      emit(CreateWorkSpaceState.success(createWorkSpaceResponse));
    }, failure: (apiErrorModel) {
      emit(CreateWorkSpaceState.error(apiErrorModel));
    });
  }
}
