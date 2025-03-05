import 'package:chief_mate/features/work_space/data/repos/update_work_space_repo.dart';
import 'package:chief_mate/features/work_space/logic/update_work_space/update_work_space_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../features/auth/data/repos/create_work_space_repo.dart';
import '../../features/auth/data/repos/login_repo.dart';
import '../../features/auth/data/repos/otp_verification_repo.dart';
import '../../features/auth/data/repos/register_repo.dart';
import '../../features/auth/data/repos/resend_otp_repo.dart';
import '../../features/auth/data/repos/update_user_profile_repo.dart';
import '../../features/auth/logic/create_work_space/create_work_space_cubit.dart';
import '../../features/auth/logic/login/login_cubit.dart';
import '../../features/auth/logic/otp_verification/otp_verification_cubit.dart';
import '../../features/auth/logic/register/register_cubit.dart';
import '../../features/auth/logic/resend_otp/resend_otp_cubit.dart';
import '../cubit/choose_color_cubit.dart';
import '../../features/auth/logic/update_user_profile/updatr_user_profile_cubit.dart';
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

// update user profile
  getIt.registerLazySingleton<UpdateUserProfileRepo>(() => UpdateUserProfileRepo(getIt()));
  getIt.registerFactory<UpdateUserProfileCubit>(() => UpdateUserProfileCubit(getIt()));

//create work space
  getIt.registerLazySingleton<CreateWorkSpaceRepo>(() => CreateWorkSpaceRepo(getIt()));
  getIt.registerFactory<CreateWorkSpaceCubit>(() => CreateWorkSpaceCubit(getIt()));

//update work space 
  getIt.registerLazySingleton<UpdateWorkSpaceRepo>(() => UpdateWorkSpaceRepo(getIt()));
  getIt.registerFactory<UpdateWorkSpaceCubit>(() => UpdateWorkSpaceCubit(getIt()));

//chosse color
  getIt.registerFactoryParam<ChooseColorCubit, int, void>(
    (initialColor, _) => ChooseColorCubit(initialColor),
  ); 
}
