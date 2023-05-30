import 'dart:io';

import 'controller/timetable_teacher_controller.dart';
import 'package:flutter/material.dart';
import 'package:sami_s_application1/core/app_export.dart';
import 'package:sami_s_application1/widgets/app_bar/appbar_circleimage.dart';
import 'package:sami_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:sami_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:sami_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:sami_s_application1/widgets/custom_button.dart';

String day = 'Wednesday';

class TimetableTeacherScreen extends StatefulWidget {
  @override
  _TimetableTeacherScreen createState() => _TimetableTeacherScreen();
}

class _TimetableTeacherScreen extends State<TimetableTeacherScreen> {
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
                        Get.toNamed(AppRoutes.homeTeacherScreen);
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.book),
                      title: const Text(' TimeTable '),
                      onTap: () {
                        Get.toNamed(AppRoutes.timetableTeacherScreen);
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.notifications),
                      title: const Text(' Notification'),
                      onTap: () {
                        Get.toNamed(AppRoutes.requestsTeacherScreen);
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
                          padding: getPadding(left: 11, top: 33, right: 11),
                          child: Text(day.tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtCookieRegular36
                                  .copyWith(letterSpacing: 0.18))),
                      Padding(
                          padding: getPadding(left: 0, top: 15, right: 0),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: getPadding(top: 135, bottom: 137),
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary:
                                            Color.fromARGB(236, 254, 255, 255),
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(
                                            getHorizontalSize(17.96)),
                                        child: CommonImageView(
                                            imagePath:
                                                ImageConstant.imgEllipse47,
                                            height: getSize(35.00),
                                            width: getSize(35.00),
                                            fit: BoxFit.cover),
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          if (day == 'Tuesday') {
                                            day = 'Monday';
                                          } else if (day == 'Monday') {
                                            day = 'Sunday';
                                          } else if (day == 'Sunday') {
                                            day = 'Saturday';
                                          } else if (day == 'Saturday') {
                                            day = 'Friday';
                                          } else if (day == 'Friday') {
                                            day = 'Thursday';
                                          } else if (day == 'Thursday') {
                                            day = 'Wednesday';
                                          } else if (day == 'Wednesday') {
                                            day = 'Tuesday';
                                          }
                                        });
                                      }),
                                ),
                                ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                        getHorizontalSize(43.00)),
                                    child: CommonImageView(
                                        imagePath:
                                            ImageConstant.imgRectangle32308x281,
                                        height: getVerticalSize(250.00),
                                        width: getHorizontalSize(250.00),
                                        fit: BoxFit.cover)),
                                Padding(
                                  padding: getPadding(top: 136, bottom: 137),
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary:
                                            Color.fromARGB(236, 254, 255, 255),
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(
                                            getHorizontalSize(17.96)),
                                        child: CommonImageView(
                                            imagePath:
                                                ImageConstant.imgEllipse4635x35,
                                            height: getSize(35.00),
                                            width: getSize(35.00),
                                            fit: BoxFit.cover),
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          if (day == 'Tuesday') {
                                            day = 'Wednesday';
                                          } else if (day == 'Monday') {
                                            day = 'Tuesday';
                                          } else if (day == 'Sunday') {
                                            day = 'Monday';
                                          } else if (day == 'Saturday') {
                                            day = 'Sunday';
                                          } else if (day == 'Friday') {
                                            day = 'Saturday';
                                          } else if (day == 'Thursday') {
                                            day = 'Friday';
                                          } else if (day == 'Wednesday') {
                                            day = 'Thursday';
                                          }
                                        });
                                      }),
                                )
                              ])),
                      CustomButton(
                          width: 148,
                          text: "lbl_weekly".tr,
                          margin: getMargin(left: 11, top: 31, right: 11),
                          variant: ButtonVariant.FillBlue50,
                          shape: ButtonShape.CircleBorder27,
                          fontStyle: ButtonFontStyle.RobotoRomanMedium24,
                          onTap: onTapWeekly),
                      Padding(
                          padding: getPadding(top: 78, right: 5, bottom: 5),
                          child: CommonImageView(
                              imagePath: ImageConstant.imgRectangle31,
                              height: getVerticalSize(205.00),
                              width: getHorizontalSize(387.00)))
                    ])))));
  }

  onTapWeekly() {
    Get.toNamed(AppRoutes.timetable2TeacherScreen);
  }

  onTapEllipseThirty9() {
    Get.toNamed(AppRoutes.homeTeacherScreen);
  }
}
