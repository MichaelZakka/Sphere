import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sphere/home/widgets/post_widget.dart';
import 'package:sphere/theme/theme_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final controller = Get.put(ThemeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 50.h,
        color: controller.theme.scaffoldBackgroundColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.home_outlined,
                  size: 28.sp,
                  color: controller.theme.primaryColor,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.camera_alt_outlined,
                  size: 28.sp,
                  color: controller.theme.primaryColor,
                )),
            IconButton(
                onPressed: () {
                  Get.toNamed('/ProfileScreen');
                },
                icon: Icon(
                  Icons.person_outline,
                  size: 28.sp,
                  color: controller.theme.primaryColor,
                )),
          ],
        ),
      ),
      backgroundColor: controller.theme.scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: controller.theme.scaffoldBackgroundColor,
        actions: [
          IconButton(
            onPressed: () {
              Get.toNamed('/SearchScreen');
            },
            icon: Icon(
              Icons.search,
              color: controller.theme.primaryColor,
            ),
            highlightColor: Colors.transparent,
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.mode_comment_outlined,
                color: controller.theme.primaryColor,
              ),
              focusNode: FocusNode()),
        ],
        leading: Image.asset(
          'images/name.png',
          color: Colors.purple[600],
        ),
        leadingWidth: 100.w,
      ),
      body: const SingleChildScrollView(
        child: ListBody(
          children: [
            Post(),
            Post(),
            Post(),
            Post(),
            Post(),
          ],
        ),
      ),
    );
  }
}
