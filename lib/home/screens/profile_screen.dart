import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sphere/theme/theme_controller.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final controller = Get.put(ThemeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        backgroundColor: controller.theme.scaffoldBackgroundColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50.h,
            ),
            Container(
              width: double.infinity,
              height: 200.h,
              color: Colors.transparent,
              child: Center(
                child: Image.asset(
                  'images/logo_name.png',
                  color: Colors.purple[600],
                ),
              ),
            ),
            SizedBox(
              height: 25.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  '   Theme',
                  style: TextStyle(
                      fontSize: 28.sp, color: controller.theme.primaryColor,fontFamily: 'Inter'),
                ),
                GetBuilder<ThemeController>(
                  builder: (_) => Switch(
                    inactiveThumbColor: Colors.purple[600],
                    inactiveTrackColor: Colors.purple[200],
                    activeTrackColor: Colors.purple[200],
                    activeColor:  Colors.purple[600],
                      value: controller.isDark,
                      onChanged: (state) {
                        print(controller.theme.primaryColor);
                        print(controller.theme);
                        print(state);
                        controller.changeTheme();
                      }),
                ),
              ],
            )
          ],
        ),
      ),
      appBar: AppBar(
        foregroundColor: controller.theme.primaryColor,
        backgroundColor: controller.theme.scaffoldBackgroundColor,
        title: Text(
          'Username',
          style: TextStyle(color: controller.theme.primaryColor,fontFamily: 'Inter'),
        ),
      ),
      body: Center(
        child: IconButton(
            onPressed: () {
              Get.offAllNamed('/LuancherScreen');
            },
            icon: Icon(Icons.abc , color: controller.theme.primaryColor,)),
      ),
    );
  }
}
