import 'package:chief_mate/features/ingredients/data/repos/create_warehouse_repo.dart';
import 'package:chief_mate/features/ingredients/logic/create_warehouse/create_warehouse_cubit.dart';
import 'package:chief_mate/features/work_space/data/repos/all_work_spacce_repo.dart';
import 'package:chief_mate/features/work_space/data/repos/get_work_space_by_id_repo.dart';
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
import '../../features/work_space/data/repos/deleted_work_space_repo.dart';
import '../../features/work_space/logic/deleted_work_space/deleted_work_space_cubit.dart';
import '../../features/work_space/logic/get_all_work_space/get_all_work_space_cubit.dart';
import '../../features/work_space/logic/get_work_space_by_id/get_work_space_by_id_cubit.dart';
import '../cubit/choose_color_cubit.dart';
import '../../features/auth/logic/update_user_profile/updatr_user_profile_cubit.dart';
import '../networking/api_service.dart';
import '../networking/dio_factory.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & ApiService
    Dio dio = await DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));
//todo: auth*************************************************************************************
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
//todo: user*************************************************************************************
// update user profile
  getIt.registerLazySingleton<UpdateUserProfileRepo>(() => UpdateUserProfileRepo(getIt()));
  getIt.registerFactory<UpdateUserProfileCubit>(() => UpdateUserProfileCubit(getIt()));

//todo: work space *******************************************************************************
//create work space
  getIt.registerLazySingleton<CreateWorkSpaceRepo>(() => CreateWorkSpaceRepo(getIt()));
  getIt.registerFactory<CreateWorkSpaceCubit>(() => CreateWorkSpaceCubit(getIt()));

//update work space
  getIt.registerLazySingleton<UpdateWorkSpaceRepo>(() => UpdateWorkSpaceRepo(getIt()));
  getIt.registerFactory<UpdateWorkSpaceCubit>(() => UpdateWorkSpaceCubit(getIt()));

//deleted work space
  getIt.registerLazySingleton<DeletedWorkSpaceRepo>(() => DeletedWorkSpaceRepo(getIt()));
  getIt.registerFactory<DeletedWorkSpaceCubit>(() => DeletedWorkSpaceCubit(getIt()));
//get all work space
  getIt.registerLazySingleton<AllWorkSpaceRepo>(() => AllWorkSpaceRepo(getIt()));
  getIt.registerFactory<GetAllWorkSpaceCubit>(() => GetAllWorkSpaceCubit(getIt()));
//get work space by id
  getIt.registerLazySingleton<GetWorkSpaceByIdRepo>(() => GetWorkSpaceByIdRepo(getIt()));
  getIt.registerFactory<GetWorkSpaceByIdCubit>(() => GetWorkSpaceByIdCubit(getIt()));

//todo: warehouse *******************************************************************************
 //create warehouse
  getIt.registerLazySingleton<CreateWarehouseRepo>(() => CreateWarehouseRepo(getIt()));
  getIt.registerFactory<CreateWarehouseCubit>(() => CreateWarehouseCubit(getIt()));




  
//todo: ui cubit**********************************************************************************
//chosse color
  getIt.registerFactoryParam<ChooseColorCubit, int, void>(
    (initialColor, _) => ChooseColorCubit(initialColor),
  );
}
