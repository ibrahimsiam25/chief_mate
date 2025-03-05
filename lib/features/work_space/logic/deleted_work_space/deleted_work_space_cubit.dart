import 'package:chief_mate/features/work_space/data/repos/deleted_work_space_repo.dart';
import 'package:chief_mate/features/work_space/logic/deleted_work_space/deleted_work_space_state.dart';

import '../../../../core/routes/routes_import.dart';

class DeletedWorkSpaceCubit extends Cubit<DeletedWorkSpaceState> {
  final DeletedWorkSpaceRepo _deletedWorkSpaceRepo;

  DeletedWorkSpaceCubit(this._deletedWorkSpaceRepo) : super(const DeletedWorkSpaceState.initial());


  void emitDeletedWorkSpaceStates({required int id}) async {
    emit(const DeletedWorkSpaceState.loading());
    final response = await _deletedWorkSpaceRepo.deletWorkSpace(id: id);
    response.when(success: (deletedWorkSpaceResponse) async {
      emit(DeletedWorkSpaceState.success(deletedWorkSpaceResponse));
    }, failure: (apiErrorModel) {
      emit(DeletedWorkSpaceState.error(apiErrorModel));
    });
  }
}