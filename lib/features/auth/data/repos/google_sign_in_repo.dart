
import 'package:chief_mate/features/auth/data/models/login_response_model.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_error_model.dart';
import '../../../../core/networking/api_result.dart';
import '../../../../core/networking/api_service.dart';
import '../models/google_sign_in_user_model.dart';
class GoogleSignInRepo {
  final GoogleSignIn _googleSignIn;
 final ApiService _apiService;
  GoogleSignInRepo(this._googleSignIn, this._apiService);

  Future<ApiResult<LoginResponseModel>> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        return ApiResult.failure(ApiErrorModel(message: "Вход в систему отменен"));
      }

     
      await googleUser.authentication;

      final googleUserModel = GoogleSignInUserModel(
        name: googleUser.displayName,
        email: googleUser.email,
        avatar: googleUser.photoUrl,
        idToken: "no token",
      );
      final response = await _apiService.loginWithGoogle(googleUserModel);

      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}