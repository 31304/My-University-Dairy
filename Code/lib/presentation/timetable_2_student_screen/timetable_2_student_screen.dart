import 'dart:io';

import 'controller/timetable_2_student_controller.dart';
import 'package:flutter/material.dart';
import 'package:sami_s_application1/core/app_export.dart';
import 'package:sami_s_application1/widgets/app_bar/appbar_circleimage.dart';
import 'package:sami_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:sami_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:sami_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:sami_s_application1/widgets/custom_button.dart';

class Timetable2StudentScreen extends GetWidget<Timetable2StudentController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            endDrawer: Drawer(
              elevation: 16.0,
              child: Drawer(
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    const DrawerHeader(
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(59, 72, 128, 1),
                      ),
                      child: Text(
                        'Student Dairy',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.person),
                      title: const Text(' My Profile '),
                      onTap: () {
                        Get.toNamed(AppRoutes.homeStudentScreen);
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.book),
                      title: const Text(' TimeTable '),
                      onTap: () {
                        Get.toNamed(AppRoutes.timetableStudentScreen);
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.notifications),
                      title: const Text(' Notification'),
                      onTap: () {
                        Get.toNamed(AppRoutes.notificationStudentScreen);
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.help_outline_outlined),
                      title: const Text(' Help '),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: Icon(Icons.question_answer),
                      title: const Text(' FAQs '),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: Icon(Icons.logout),
                      title: const Text(' Log Out '),
                      onTap: () {
                        Get.toNamed(AppRoutes.firstScreen);
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.exit_to_app_rounded),
                      title: const Text('Exit'),
                      onTap: () {
                        exit(0);
                      },
                    ),
                  ],
                ),
              ),
            ),
            appBar: AppBar(
              title: Text("Time Table"),
              backgroundColor: Color.fromRGBO(59, 72, 128, 1),
              leading: IconButton(
                icon: Icon(Icons.arrow_back,
                    color: Color.fromARGB(255, 255, 255, 255)),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ),
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                      Padding(
                          padding: getPadding(left: 12, top: 33, right: 12),
                          child: Text("msg_weekly_timetable".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtCookieRegular36
                                  .copyWith(letterSpacing: 0.18))),
                      Padding(
                          padding: getPadding(left: 12, top: 68, right: 12),
                          child: CommonImageView(
                              imagePath: ImageConstant.imgRectangle34,
                              height: getVerticalSize(240.00),
                              width: getHorizontalSize(367.00))),
                      CustomButton(
                          width: 134,
                          text: "lbl_daily".tr,
                          margin: getMargin(left: 12, top: 45, right: 12),
                          variant: ButtonVariant.FillBlue50,
                          shape: ButtonShape.CircleBorder27,
                          fontStyle: ButtonFontStyle.RobotoRomanMedium24,
                          onTap: onTapDaily),
                      Padding(
                          padding: getPadding(left: 2, top: 103, right: 2),
                          child: CommonImageView(
                              imagePath: ImageConstant.imgRectangle31,
                              height: getVerticalSize(205.00),
                              width: getHorizontalSize(387.00)))
                    ])))));
  }

  onTapDaily() {
    Get.toNamed(AppRoutes.timetableStudentScreen);
  }

  onTapEllipseThirty4() {
    Get.toNamed(AppRoutes.homeStudentScreen);
  }
}
