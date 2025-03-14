import 'package:chief_mate/app.dart';
import 'package:chief_mate/core/di/dependency_injection.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'firebase_options.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
 await setupGetIt();
  Intl.defaultLocale = 'ru';
   await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);

  await ScreenUtil.ensureScreenSize();

  runApp(
    const ChiefMate(),
  );
}
