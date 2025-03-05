import '../../features/auth/logic/update_user_profile/updatr_user_profile_cubit.dart';
import 'routes_import.dart';

abstract class AppRoutes {
  static String kBottomNavBarController = '/kBottomNavBarController';
  static String kAddPhoneNumberView = '/kAddPhoneNumberView';
  static String kOtpVerificationWithEmailView =
      '/kOtpVerificationWithEmailView';
  static String kOtpVerificationWithSmsView = '/kOtpVerificationWithSmsView';
  static String kPermissionView = '/kPermissionView';
  static String kWorkSpaceView = '/kWorkSpaceView';
  ////////
  static String kEditWorkSpace = '/kEditWorkSpace';
  static String kWorkSpaceCategories = '/kWorkSpaceCategories';
  static String kTeamView = '/kTeamView';
  static String kProductionView = '/ProductionView';
  static String kCategoryView = '/kCategoryView';
  ////////
  static String kAddIngredientView = '/kAddIngredientView';
  static String kIngredientsView = '/kIngredientsView';
  static String kIngredientDetailsView = '/kIngredientDetailsView';
  static String kAddStatusView = '/kAddStatusView';
  static String kInWorkStatusView = '/kInWorkStatusView';
  static String kCompletedStatusView = '/kCompletedStatusView';
  static String kCalenderView = '/kCalenderView';
  static String kCustomFoodItemDetailsHomeView =
      '/kCustomFoodItemDetailsHomeView';
  static String kOnBoardingView = '/kOnBoardingView';
  static String kFavouriteRecipeView = '/kFavouriteRecipeView';
  static String kDraftRecipeView = '/kDraftRecipeView';
  static String kWatchCategoryView = '/kWatchCategoryView';
  static String kAddRecipeView = '/kAddRecipeView';
  static String kRelatedRecipesView = '/kRelatedRecipesView';

  static GoRouter router = GoRouter(
    initialLocation: AskCreateWorkSpaceOrWaitInvitation.routeName,
    routes: [
      GoRoute(
        path: SignUpView.routeName,
        builder: (context, state) => const SignUpView(),
      ),
      GoRoute(
        path: kAddPhoneNumberView,
        builder: (context, state) => const AddPhoneNumberView(),
      ),
      GoRoute(
        path: kOtpVerificationWithEmailView,
        builder: (context, state) => MultiBlocProvider(
          providers: [
            BlocProvider(create: (context) => getIt<OtpVerificationCubit>()),
            BlocProvider(create: (context) => getIt<ResendOtpCubit>()),
          ],
          child: const OtpVerificationWithEmailView(),
        ),
      ),
      GoRoute(
        path: UserInfoView.routeName,
        builder: (context, state) => const UserInfoView(),
      ),
      GoRoute(
        path: CreateAvatarView.routeName,
        builder: (context, state) => BlocProvider(
          create: (context) => getIt<UpdateUserProfileCubit>(),
          child: CreateAvatarView(
            userName: state.extra as String,
          ),
        ),
      ),
      GoRoute(
        path: kPermissionView,
        builder: (context, state) => const PermissionView(),
      ),
      GoRoute(
        path: kOnBoardingView,
        builder: (context, state) => const OnBoardingView(),
      ),
      GoRoute(
        path: WorkSpaceNameView.routeName,
        builder: (context, state) => const WorkSpaceNameView(),
      ),
      GoRoute(
        path: ChooseColorView.routeName,
        builder: (context, state) => ChooseColorView(
          workSpaceName: state.extra as String,
        ),
      ),
      GoRoute(
        path: CreateWorkSpaceView.routeName,
        builder: (context, state) => const CreateWorkSpaceView(),
      ),
      GoRoute(
        path: PreviewWorkSpaceView.routeName,
        builder: (context, state) {
          final extras = state.extra as Map<String, dynamic>? ?? {};

          return PreviewWorkSpaceView(
            workSpaceName: extras['workSpaceName'] as String,
            workSpaceColor:
                extras['workSpaceColor'] as int, // Default white color
          );
        },
      ),

      GoRoute(
        path: kWorkSpaceView,
        builder: (context, state) => const WorkSpaceView(),
      ),
      //////////////
      GoRoute(
        path: kEditWorkSpace,
        builder: (context, state) => const EditWorkSpaceView(),
      ),
      GoRoute(
        path: kWorkSpaceCategories,
        builder: (context, state) => const WorkSpaceCategoriesView(),
      ),
      GoRoute(
        path: kTeamView,
        builder: (context, state) => const TeamView(),
      ),
      GoRoute(
        path: kProductionView,
        builder: (context, state) => const ProductionView(),
      ),
      GoRoute(
        path: kCategoryView,
        builder: (context, state) => const CategoryView(),
      ),

      //////////////

      GoRoute(
        path: kBottomNavBarController,
        builder: (context, state) => const BottomNavBarController(),
      ),
      GoRoute(
        path: kIngredientsView,
        builder: (context, state) => const IngredientsView(),
      ),
      GoRoute(
        path: kAddIngredientView,
        builder: (context, state) => const AddIngredientView(),
      ),
      GoRoute(
        path: kIngredientDetailsView,
        builder: (context, state) => const IngredientDetailsView(),
      ),
      GoRoute(
        path: kAddStatusView,
        builder: (context, state) => const AddStatusView(),
      ),
      GoRoute(
        path: kInWorkStatusView,
        builder: (context, state) => const InWorkStatusView(),
      ),
      GoRoute(
        path: kCompletedStatusView,
        builder: (context, state) => const CompletedStatusView(),
      ),
      GoRoute(
        path: kCalenderView,
        builder: (context, state) => const CalenderView(),
      ),
      GoRoute(
        path: kCustomFoodItemDetailsHomeView,
        builder: (context, state) => const FoodItemDetailsHomeView(),
      ),
      ///////////
      GoRoute(
        path: kFavouriteRecipeView,
        builder: (context, state) => const FavouriteRecipeView(),
      ),
      GoRoute(
        path: kDraftRecipeView,
        builder: (context, state) => const DraftRecipeView(),
      ),
      GoRoute(
        path: kWatchCategoryView,
        builder: (context, state) => const WatchCategoryView(),
      ),
      GoRoute(
        path: kAddRecipeView,
        builder: (context, state) => const AddRecipeView(),
      ),
      GoRoute(
        path: kRelatedRecipesView,
        builder: (context, state) => const RelatedRecipesView(),
      ),
      GoRoute(
        path: ProfileView.routeName,
        builder: (context, state) => const ProfileView(),
      ),
      GoRoute(
        path: TasksView.routeName,
        builder: (context, state) => const TasksView(),
      ),
      GoRoute(
        path: InstructionsFoodDetailsView.routeName,
        builder: (context, state) => const InstructionsFoodDetailsView(),
      ),
      GoRoute(
        path: StartCookingView.routeName,
        builder: (context, state) => const StartCookingView(),
      ),
      GoRoute(
        path: AddTaskView.routeName,
        builder: (context, state) => const AddTaskView(),
      ),
      GoRoute(
        path: kOtpVerificationWithSmsView,
        builder: (context, state) => const OtpVerificationWithSmsView(),
      ),
      GoRoute(
        path: LoginWithEmailView.routeName,
        builder: (context, state) => BlocProvider(
          create: (context) => getIt<LoginCubit>(),
          child: const LoginWithEmailView(),
        ),
      ),
      GoRoute(
        path: RegisterView.routeName,
        builder: (context, state) => BlocProvider(
          create: (context) => getIt<RegisterCubit>(),
          child: const RegisterView(),
        ),
      ),
      GoRoute(
        path: AskCreateWorkSpaceOrWaitInvitation.routeName,
        builder: (context, state) => const AskCreateWorkSpaceOrWaitInvitation(),
      ),
    ],
  );
}
