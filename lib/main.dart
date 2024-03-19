import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:sphere/auth/screens/login_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sphere/auth/screens/luancher_screen.dart';
import 'package:sphere/auth/screens/signup_screen.dart';
import 'package:sphere/home/screens/home_screen.dart';
import 'package:sphere/home/screens/profile_screen.dart';
import 'package:sphere/home/screens/search_screen.dart';
import 'package:sphere/theme/theme.dart';
import 'package:sphere/theme/theme_controller.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(
     MyApp(),
  );
  FlutterNativeSplash.remove();
}

class MyApp extends StatelessWidget {
  final controller = Get.put(ThemeController());
   MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        // designSize: const Size(360, 690),
        // minTextAdapt: true,
        // splitScreenMode: true,
        builder: (_, child) {
          return GetMaterialApp(
            home: const LuancherScreen(),
            title: 'Flutter Demo',
            initialRoute: '/LuancherScreen',
            getPages: [
              GetPage(name: '/LoginScreen', page: () => LoginScreen()),
              GetPage(name: '/LuancherScreen', page: () => LuancherScreen()),
              GetPage(name: '/SignUpScreen', page: () => SignUpScreen()),
              GetPage(name: '/HomeScreen', page: () => HomeScreen()),
              GetPage(name: '/SearchScreen', page: () => SearchScreen()),
              GetPage(name: '/ProfileScreen', page: () => ProfileScreen()),
            ],
            theme: controller.theme,
            // theme: ThemeData(
            //   textTheme: const TextTheme(
            //     bodyText1: TextStyle(fontFamily: 'Inter'),
            //     bodyText2: TextStyle(fontFamily: 'Inter'),
              // ),
            // ),
          );
        });
  }
}
