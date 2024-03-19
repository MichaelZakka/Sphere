import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sphere/auth/widgets/auth_button.dart';
import 'package:sphere/auth/widgets/auth_textfield.dart';
import 'package:sphere/theme/theme_controller.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final controller =Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:controller.theme.scaffoldBackgroundColor,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 50.h,
              ),
              Image.asset(
                'images/logo_name.png',
                width: 275.w,
                height: 275.h,
                    color: Colors.purple[600],
              ),
              SizedBox(
                height: 60.h,
              ),
              AuthTextfield(obsecurity: false, hintText: 'Username'),
              AuthTextfield(obsecurity: true, hintText: 'Password'),
              SizedBox(
                height: 60.h,
              ),
              AuthButton(
                text: 'Login',
                page: '/HomeScreen',
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an account ? ',
                    style: TextStyle(fontSize: 16.sp ,color:controller.theme.primaryColor ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed('/SignUpScreen');
                    },
                    child: Text(
                      'Sign up',
                      style: TextStyle(
                          fontSize: 16.sp,
                          decoration: TextDecoration.underline,color: controller.theme.primaryColor),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 15.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}
