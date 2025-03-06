import 'routes_import.dart';

abstract class AppRoutes {
  static String kDraftRecipeView = '/kDraftRecipeView';
  static String kWatchCategoryView = '/kWatchCategoryView';
  static String kAddRecipeView = '/kAddRecipeView';
  static String kRelatedRecipesView = '/kRelatedRecipesView';
  static GoRouter router = GoRouter(
    initialLocation: SignUpView.routeName,
    routes: [
      GoRoute(
        path: SignUpView.routeName,
        builder: (context, state) => const SignUpView(),
      ),
      GoRoute(
        path: AddPhoneNumberView.routeName,
        builder: (context, state) => const AddPhoneNumberView(),
      ),
      GoRoute(
        path: OtpVerificationWithEmailView.routeName,
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
        path: PermissionView.routeName,
        builder: (context, state) => const PermissionView(),
      ),
      GoRoute(
        path: OnBoardingView.routeName,
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
        builder: (context, state) => PreviewWorkSpaceView(
            workSpaceModel: state.extra as WorkSpaceResponseModel),
      ),
      GoRoute(
        path: WorkSpaceView.routeName,
        builder: (context, state) => WorkSpaceView(
          workSpaceModel: state.extra as WorkSpaceResponseModel,
        ),
      ),
      GoRoute(
        path: EditWorkSpaceView.routeName,
        builder: (context, state) => EditWorkSpaceView(
          workSpaceModel: state.extra as WorkSpaceResponseModel,
        ),
      ),
      GoRoute(
        path: WorkSpaceCategoriesView.routeName,
        builder: (context, state) => const WorkSpaceCategoriesView(),
      ),
      GoRoute(
        path: TeamView.routeName,
        builder: (context, state) => const TeamView(),
      ),
      GoRoute(
        path: ProductionView.routeName,
        builder: (context, state) => const ProductionView(),
      ),
      GoRoute(
        path: CategoryView.routeName,
        builder: (context, state) => const CategoryView(),
      ),
      GoRoute(
        path: BottomNavBarController.routeName,
        builder: (context, state) => const BottomNavBarController(),
      ),
      GoRoute(
        path: IngredientsView.routeName,
        builder: (context, state) => const IngredientsView(),
      ),
      GoRoute(
        path: AddIngredientView.routeName,
        builder: (context, state) => const AddIngredientView(),
      ),
      GoRoute(
        path: IngredientDetailsView.routeName,
        builder: (context, state) => const IngredientDetailsView(),
      ),
      GoRoute(
        path: AddStatusView.routeName,
        builder: (context, state) => const AddStatusView(),
      ),
      GoRoute(
        path: InWorkStatusView.routeName,
        builder: (context, state) => const InWorkStatusView(),
      ),
      GoRoute(
        path: CompletedStatusView.routeName,
        builder: (context, state) => const CompletedStatusView(),
      ),
      GoRoute(
        path: CalenderView.routeName,
        builder: (context, state) => const CalenderView(),
      ),
      GoRoute(
        path: FoodItemDetailsHomeView.routeName,
        builder: (context, state) => const FoodItemDetailsHomeView(),
      ),
      GoRoute(
        path: FavouriteRecipeView.routeName,
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
        path: OtpVerificationWithSmsView.routeName,
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
        builder: (context, state) => MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => getIt<RegisterCubit>(),
            ),
            BlocProvider(
              create: (context) => getIt<ResendOtpCubit>(),
            ),
          ],
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
