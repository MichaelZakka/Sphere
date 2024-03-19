import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sphere/theme/theme_controller.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ThemeController());
    return Scaffold(
      backgroundColor: controller.theme.scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: controller.theme.scaffoldBackgroundColor,
        actions: [
          Container(
            alignment: Alignment.center,
            width: 300.w,
            child: TextFormField(
              style: TextStyle(
                color: controller.theme.primaryColor,
                fontSize: 20.sp,
                letterSpacing: 2,
              ),
              cursorColor: controller.theme.primaryColor,
              decoration: const InputDecoration(
                  hintText: 'Search',
                  border: InputBorder.none,
                  hintStyle: TextStyle( fontSize: 20,color: Colors.white)),
            ),
          )
        ],
      ),
    );
  }
}
