import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/networking/api_error_model.dart';


part 'google_sign_in_state.freezed.dart';

@freezed
class GoogleSignInState<T> with _$GoogleSignInState<T> {
  const factory GoogleSignInState.initial() = _Initial;
  const factory GoogleSignInState.loading() = Loading;
  const factory GoogleSignInState.success(T data) = Success<T>;
  const factory GoogleSignInState.error(ApiErrorModel apiErrorModel) = Error;
}
