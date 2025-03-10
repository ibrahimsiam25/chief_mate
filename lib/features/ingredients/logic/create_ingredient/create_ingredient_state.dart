import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/networking/api_error_model.dart';

part 'create_ingredient_state.freezed.dart';

@freezed
abstract class CreateIngredientState<T> with _$CreateIngredientState<T> {
  const factory CreateIngredientState.initial() = Initial;
  const factory CreateIngredientState.loading() = Loading;
  const factory CreateIngredientState.success(T data) = Success<T>;
  const factory CreateIngredientState.error(ApiErrorModel apiErrorModel) = Error;
}
