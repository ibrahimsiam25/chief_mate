import 'package:chief_mate/features/auth/data/models/otp_verification_response_model.dart';
import 'package:chief_mate/features/work_space/data/models/deleted_work_space_response_model.dart';
import 'package:dio/dio.dart';
import 'package:chief_mate/core/networking/api_constants.dart';
import 'package:retrofit/retrofit.dart';

import '../../features/auth/data/models/work_space_request_model.dart';
import '../../features/auth/data/models/work_space_response_model.dart';
import '../../features/auth/data/models/login_request_model.dart';
import '../../features/auth/data/models/login_response_model.dart';
import '../../features/auth/data/models/otp_verification_request_model.dart';
import '../../features/auth/data/models/register_request_model.dart';
import '../../features/auth/data/models/register_response_model.dart';
import '../../features/auth/data/models/resend_otp_request_model.dart';
import '../../features/auth/data/models/update_user_profile_request_model.dart';
import '../../features/auth/data/models/update_user_profile_response_model.dart';


part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.login)
  Future<LoginResponseModel> login(
    @Body() LoginRequestModel loginRequestBody,
  );

  @POST(ApiConstants.register)
  Future<RegisterResponseModel> register(
    @Body() RegisterRequestModel signupRequestBody,
  );
  @POST(ApiConstants.otpVerification)
  Future<OtpVerificationResponseModel> otpVerification(
    @Body() OtpVerificationRequestModel otpVerificationRequestModel,
  );
  @POST( ApiConstants.resendOtp)
  Future<Map<String, String>> resendOtp(
    @Body()  ResendOtpRequestModel resendOtpRequestModel,
  );
  @PUT(ApiConstants.updateUserProfile)
  Future<UpdateUserProfileResponseModel> updateUserProfile(
    @Body() UpdateUserProfileRequestModel updateUserProfileRequestModel,
  );

  @POST(ApiConstants.workSpace)
  Future<WorkSpaceResponseModel> createWorkSpace(
    @Body() WorkSpaceRequestModel workSpaceRequestModel,
  );

  @PUT("${ApiConstants.workSpace}/{id}")
  Future<WorkSpaceResponseModel> updateWorkSpace(
    @Path() int id,
    @Body() WorkSpaceRequestModel workSpaceRequestModel,
  );

  @DELETE("${ApiConstants.workSpace}/{id}")
  Future<DeletedWorkSpaceResponseModel> deleteWorkSpace(
    @Path() int id,
  );
}
