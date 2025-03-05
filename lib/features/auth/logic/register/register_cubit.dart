import 'package:chief_mate/features/auth/logic/register/register_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/register_request_model.dart';
import '../../data/repos/register_repo.dart';


class RegisterCubit extends Cubit<RegisterState> {
  final RegisterRepo _registerRepo;
  RegisterCubit(this._registerRepo) : super(const RegisterState.initial());


  void emitRegisterStates({required String email, required String password}) async {
    emit(const RegisterState.registerLoading());
    final response = await _registerRepo.register(
      RegisterRequestModel(
        email: email,
        password: password
      
      ),
    );
    response.when(success: (registerResponse) {
      emit(RegisterState.registerSuccess(registerResponse));
    }, failure: (apiErrorModel) {
      emit(RegisterState.registerError(apiErrorModel));
    });
  }
}
