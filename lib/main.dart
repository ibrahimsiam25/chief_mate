import 'package:chief_mate/app.dart';
import 'package:chief_mate/core/di/dependency_injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
 await setupGetIt();
  Intl.defaultLocale = 'ru';
  await ScreenUtil.ensureScreenSize();

  runApp(
    const ChiefMate(),
  );
}
