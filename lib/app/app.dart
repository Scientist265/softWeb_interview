import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_one/view/auth/login_screen.dart';
import 'package:interview_one/view/entrypoint/entry.dart';
import '../../core/config/theme/colors.dart';
import '../core/config/navigation/route.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 825),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: "SoftWeb",
            theme: ThemeData(
              scaffoldBackgroundColor: AppColors.darkGreen,
              iconTheme: IconThemeData(color: AppColors.primaryColor),
              primarySwatch: Colors.grey,
            ),
            home: const LoginScreen(),
            onGenerateRoute: Routes.onGenerateRoute,
          );
        });
  }
}
