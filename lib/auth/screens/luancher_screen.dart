import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sphere/auth/screens/login_screen.dart';
import 'package:sphere/auth/widgets/auth_button.dart';
import 'package:sphere/theme/theme_controller.dart';

class LuancherScreen extends StatefulWidget {
  const LuancherScreen({super.key});

  @override
  State<LuancherScreen> createState() => _LuancherScreenState();
}

class _LuancherScreenState extends State<LuancherScreen> {
  final controller = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: controller.theme.scaffoldBackgroundColor,
      // appBar: AppBar(
      //   actions: [
      //     GetBuilder<ThemeController>(
      //       builder: (_) => Switch(
      //           value: controller.isDark,
      //           onChanged: (state) {
      //             print(state);
      //             controller.changeTheme();
      //           }),
      //     ),
      //   ],
      // ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            'images/logo_name.png',
            width: 275.w,
            height: 275.h,
            color: Colors.purple[600],
          ),
          AuthButton(
            text: 'Get Started',
            page: '/LoginScreen',
          )
        ],
      )),
    );
  }
}
