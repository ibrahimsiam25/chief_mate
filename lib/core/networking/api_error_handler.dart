import 'package:dio/dio.dart';

import 'api_error_model.dart';

class ApiErrorHandler {
  late ApiErrorModel apiErrorModel;

  static ApiErrorModel handle(dynamic error) {
    if (error is DioException) {
      return dioExceptionHandlers(error);
    } else {
      return ApiErrorModel(message: "Что-то пошло не так");
    }
  }

  static ApiErrorModel dioExceptionHandlers(DioException error) {
        switch (error.type) {
      case DioExceptionType.connectionError:
        return ApiErrorModel(message: "Ошибка соединения с сервером");
      case DioExceptionType.connectionTimeout:
        return ApiErrorModel(message: "Время ожидания соединения с сервером истекло");
      case DioExceptionType.receiveTimeout:
        return ApiErrorModel(
            message: "Тайм-аут получения данных от сервера");
      case DioExceptionType.sendTimeout:
        return ApiErrorModel(
            message: "Тайм-аут отправки данных на сервер");
      case DioExceptionType.cancel:
        return ApiErrorModel(message: "Запрос к серверу был отменён");
      case DioExceptionType.unknown:
        return ApiErrorModel(message: "Произошла непредвиденная ошибка");
      case DioExceptionType.badResponse:
        return _handleError(error.response?.data);
      default:
        return ApiErrorModel(message: "Что-то пошло не так");
    }
  }
}

//to show map of errors like email, password etc required
ApiErrorModel _handleError(dynamic errorResponse) {
return ApiErrorModel
(
  message: errorResponse["message"]??"Произошла неизвестная ошибка",
  code: errorResponse["code"],
  errors: errorResponse['errors'],
  );
  
}
