
import 'package:google_sign_in/google_sign_in.dart';

import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_error_model.dart';
import '../../../../core/networking/api_result.dart';
import '../models/google_sign_in_user_model.dart';
class GoogleSignInRepo {
  final GoogleSignIn _googleSignIn;

  GoogleSignInRepo(this._googleSignIn);

  Future<ApiResult<GoogleSignInUserModel>> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        return ApiResult.failure(ApiErrorModel(message: "Вход в систему отменен"));
      }

      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;

      final googleUserModel = GoogleSignInUserModel(
        name: googleUser.displayName,
        email: googleUser.email,
        photoUrl: googleUser.photoUrl,
        idToken: googleAuth.idToken,
      );

      return ApiResult.success(googleUserModel);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}