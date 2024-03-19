import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:async';

import 'package:get/get.dart';
import 'package:sphere/theme/theme_controller.dart';

class Post extends StatefulWidget {
  const Post({super.key});

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  final controller = Get.put(ThemeController());
  IconData icon = Icons.favorite_border;
  bool liked = false;
  bool pressed = false;
  Timer? timer;

  void like() {
    setState(() {
      icon = Icons.favorite;
      liked = true;
      pressed = true;
      timer?.cancel();
      timer = Timer(Duration(milliseconds: 500), () {
        setState(() {
          pressed = false;
        });
      });
    });
  }

  void unlike() {
    setState(() {
      icon = Icons.favorite_border;
      liked = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 10.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 15.w,
            ),
            ClipOval(
                child: Image.asset(
              'images/WhatsApp Image 2023-08-24 at 08.08.49.jpeg',
              width: 40.w,
            )),
            SizedBox(
              width: 15.w,
            ),
            Text(
              'Username',
              style: TextStyle(fontSize: 16.sp, color: controller.theme.primaryColor),
            )
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        Stack(
          children: [
            GestureDetector(
              onDoubleTap: () {
                liked ? unlike() : like();
              },
              child: Image.asset(
                'images/WhatsApp Image 2023-08-24 at 08.08.49.jpeg',
                width: double.infinity,
              ),
            ),
            Center(
              heightFactor: 7.h,
              child: AnimatedOpacity(
                curve: Curves.linear,
                opacity: pressed ? 1 : 0,
                duration: Duration(milliseconds: 250),
                child: Icon(
                  Icons.favorite,
                  size: 50.sp,
                  color: Colors.red,
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        Row(
          children: [
            IconButton(
                onPressed: () {
                  if (liked) {
                    print(liked);
                    unlike();
                  } else {
                    like();
                  }
                },
                icon: Icon(
                  icon,
                  size: 28.sp,
                  color: liked ? Colors.red : controller.theme.primaryColor,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.mode_comment_outlined,
                  size: 28.sp,
                  color: controller.theme.primaryColor,
                )),
            IconButton(
                onPressed: () {
                  print(pressed);
                },
                icon: Icon(
                  Icons.send,
                  size: 28.sp,
                  color: controller.theme.primaryColor,
                )),
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        Row(
          children: [
            SizedBox(
              width: 10.w,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              child: Text(
                'Username',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w900,
                  color: controller.theme.primaryColor,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        Row(
          children: [
            SizedBox(
              width: 10.w,
            ),
            Container(
                width: MediaQuery.of(context).size.width * 0.8,
                child: Text(
                  'dslkbnsdlbnflbknfdb',
                  style: TextStyle(
                    color: controller.theme.primaryColor,
                  ),
                )),
          ],
        ),
        SizedBox(
          height: 25.h,
        ),
      ],
    );
  }
}
