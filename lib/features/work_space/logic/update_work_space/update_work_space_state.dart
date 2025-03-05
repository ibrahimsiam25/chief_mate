import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/networking/api_error_model.dart';
part 'update_work_space_state.freezed.dart';
@freezed
class UpdateWorkSpaceState<T> with _$UpdateWorkSpaceState<T> {
  const factory UpdateWorkSpaceState.initial() = _Initial;
  const factory UpdateWorkSpaceState.loading() = Loading;
  const factory UpdateWorkSpaceState.success(T data) = Success<T>;
  const factory UpdateWorkSpaceState.error(ApiErrorModel error) = Error;
}
