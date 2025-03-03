import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../features/auth/data/repos/login_repo.dart';
import '../../features/auth/data/repos/otp_verification_repo.dart';
import '../../features/auth/data/repos/register_repo.dart';
import '../../features/auth/data/repos/resend_otp_repo.dart';
import '../../features/auth/logic/login/login_cubit.dart';
import '../../features/auth/logic/otp_verification/otp_verification_cubit.dart';
import '../../features/auth/logic/register/register_cubit.dart';
import '../../features/auth/logic/resend_otp/resend_otp_cubit.dart';
import '../networking/api_service.dart';
import '../networking/dio_factory.dart';



final getIt = GetIt.instance;

Future<void> setupGetIt() async {

  // Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // register
  getIt.registerLazySingleton<RegisterRepo>(() => RegisterRepo(getIt()));
  getIt.registerFactory<RegisterCubit>(() => RegisterCubit(getIt()));
  
  // login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

// otp verification
  getIt.registerLazySingleton<OtpVerificationRepo>(() => OtpVerificationRepo(getIt()));
  getIt.registerFactory<OtpVerificationCubit>(() => OtpVerificationCubit(getIt()));

//resend otp
getIt.registerLazySingleton<ResendOtpRepo>(() => ResendOtpRepo(getIt()));
getIt.registerFactory<ResendOtpCubit>(() => ResendOtpCubit(getIt()));

}
