import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sphere/theme/theme_controller.dart';

class AuthTextfield extends StatefulWidget {
  final bool obsecurity;
  final String hintText;

  const AuthTextfield({required this.obsecurity, required this.hintText});

  @override
  State<AuthTextfield> createState() => _AuthTextfieldState();
}

class _AuthTextfieldState extends State<AuthTextfield> {
  IconData icon = Icons.visibility;
  bool isobsecure = true;
  final controller = Get.put(ThemeController());

  void toggle() {
    setState(() {
      isobsecure = !(isobsecure);
    });
  }

  @override
  Widget build(BuildContext context) {
    return widget.obsecurity
        ? Column(
            children: [
              SizedBox(
                height: 15.h,
              ),
              Container(
                width: 275.w,
                height: 60.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: controller.theme.primaryColor,
                      width: 2,
                    ),
                    color: Colors.transparent),
                child: TextFormField(
                    style: TextStyle(
                        color: controller.theme.primaryColor, fontSize: 16.sp),
                    textAlign: TextAlign.start,
                    cursorColor: controller.theme.primaryColor,
                    obscureText: isobsecure,
                    decoration: InputDecoration(
                        suffixIcon: GestureDetector(
                            onTap: () {
                              toggle();
                              setState(() {
                                if (isobsecure) {
                                  icon = Icons.visibility;
                                }
                                if (!isobsecure) {
                                  icon = Icons.visibility_off;
                                }
                              });
                            },
                            child: Icon(
                              icon,
                              color: controller.theme.primaryColor,
                            )),
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                        hintText: widget.hintText,
                        hintStyle: TextStyle(
                            color: controller.theme.primaryColor,
                            fontSize: 16.sp))),
              ),
              SizedBox(
                height: 15.h,
              ),
            ],
          )
        : Column(
            children: [
              SizedBox(
                height: 15.h,
              ),
              Container(
                width: 275.w,
                height: 60.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: controller.theme.primaryColor,
                      width: 2,
                    ),
                    color: Colors.transparent),
                child: TextFormField(
                    style: TextStyle(
                        color: controller.theme.primaryColor, fontSize: 16.sp),
                    textAlign: TextAlign.start,
                    cursorColor: controller.theme.primaryColor,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                        hintText: widget.hintText,
                        hintStyle: TextStyle(
                            color: controller.theme.primaryColor,
                            fontSize: 16.sp))),
              ),
              SizedBox(
                height: 15.h,
              ),
            ],
          );
  }
}
