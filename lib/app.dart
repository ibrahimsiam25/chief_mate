import 'package:chief_mate/core/constants/colors.dart';
import 'package:chief_mate/core/constants/fonts.dart';
import '../../../../../core/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class ChiefMate extends StatelessWidget {
  const ChiefMate({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp.router(
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            brightness: Brightness.dark,
            scaffoldBackgroundColor: AppColors.kColor1,
            fontFamily: AppFonts.pTRootUI,
          ),
          routerConfig: AppRoutes.router,
        );
      },
    );
  }
}
