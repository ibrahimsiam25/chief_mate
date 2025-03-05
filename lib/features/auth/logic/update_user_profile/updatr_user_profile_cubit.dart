import '../../../../core/routes/routes_import.dart';
import '../../data/models/update_user_profile_request_model.dart';
import '../../data/repos/update_user_profile_repo.dart';
import 'package:chief_mate/features/auth/logic/update_user_profile/updatr_user_profile_state.dart';
class UpdateUserProfileCubit extends Cubit<UpdateUserProfileState> {
  final UpdateUserProfileRepo _updateUserProfileRepo ;

  UpdateUserProfileCubit(this._updateUserProfileRepo):super(const UpdateUserProfileState.initial());
  void emitUpdateUserProfileStates({required UpdateUserProfileRequestModel updateUserProfileRequestModel})async{
    emit(const UpdateUserProfileState.loading());
    final response = await _updateUserProfileRepo.updateUserProfile(updateUserProfileRequestModel);
    response.when(success: (updateUserProfileResponse) async {
      emit(UpdateUserProfileState.success(updateUserProfileResponse));
    }, failure: (apiErrorModel) {
      emit(UpdateUserProfileState.error(apiErrorModel));
    });
  }
}
