import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sphere/theme/theme_controller.dart';

class AuthButton extends StatelessWidget {
  final String text;
  final String page;
  // final Color color;

  AuthButton({
    required this.text,
    required this.page,
    //  required this.color
  });
  final controller = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.offAllNamed('$page');
      },
      child: Container(
        width: 275.w,
        height: 60.h,
        decoration: BoxDecoration(
          color: controller.theme.primaryColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
            child: Text(
          '$text',
          style: TextStyle(
              fontSize: 20.sp,
              fontFamily: 'Inter',
              color: controller.theme.hintColor),
        )),
      ),
    );
  }
}
