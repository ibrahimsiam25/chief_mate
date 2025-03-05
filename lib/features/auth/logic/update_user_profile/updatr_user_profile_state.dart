import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/networking/api_error_model.dart';

part 'updatr_user_profile_state.freezed.dart';

@freezed
class UpdateUserProfileState<T> with _$UpdateUserProfileState<T> {
  const factory UpdateUserProfileState.initial() = _Initial;
  const factory UpdateUserProfileState.loading() = UpdateUserProfileLoading;
  const factory UpdateUserProfileState.success(T data) = UpdateUserProfileSuccess<T>;
  const factory UpdateUserProfileState.error(ApiErrorModel apiErrorModel) =
      UpdateUserProfileError;
}
