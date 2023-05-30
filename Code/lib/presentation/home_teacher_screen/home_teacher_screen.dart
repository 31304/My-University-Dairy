import 'dart:io';

import 'controller/home_teacher_controller.dart';
import 'package:flutter/material.dart';
import 'package:sami_s_application1/core/app_export.dart';

bool isSwitched = false;

class HomeTeacherScreen extends GetWidget<HomeTeacherController> {
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
          title: Text("Sudent Dairy"),
          backgroundColor: Color.fromRGBO(59, 72, 128, 1),
          leading: IconButton(
            icon: Icon(Icons.arrow_back,
                color: Color.fromARGB(255, 255, 255, 255)),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Align(
                alignment: Alignment.centerLeft,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          height: getVerticalSize(
                            331.00,
                          ),
                          width: size.width,
                          child: Stack(
                            alignment: Alignment.bottomLeft,
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                  margin: getMargin(
                                    bottom: 1,
                                  ),
                                  decoration:
                                      AppDecoration.fillIndigo800.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.customBorderBL40,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                          padding: getPadding(
                                            left: 13,
                                            top: 23,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                width: getHorizontalSize(
                                                  201.00,
                                                ),
                                                margin: getMargin(
                                                  bottom: 108,
                                                ),
                                                child: Text(
                                                  "msg_welcome_to_my_university"
                                                      .tr,
                                                  maxLines: null,
                                                  textAlign: TextAlign.center,
                                                  style: AppStyle
                                                      .txtPraiseRegular35
                                                      .copyWith(
                                                    letterSpacing: 0.18,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  top: 28,
                                                ),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    getHorizontalSize(
                                                      75.50,
                                                    ),
                                                  ),
                                                  child: CommonImageView(
                                                    imagePath: ImageConstant
                                                        .imgEllipse261,
                                                    height: getVerticalSize(
                                                      151.00,
                                                    ),
                                                    width: getHorizontalSize(
                                                      128.00,
                                                    ),
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                          padding: getPadding(
                                            left: 88,
                                            top: 61,
                                            right: 88,
                                            bottom: 13,
                                          ),
                                          child: Text(
                                            "lbl_welcome_irum".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPraiseRegular35WhiteA700
                                                .copyWith(
                                              letterSpacing: 0.18,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                  padding: getPadding(
                                    top: 10,
                                    right: 10,
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                      getHorizontalSize(
                                        42.50,
                                      ),
                                    ),
                                    child: CommonImageView(
                                      imagePath:
                                          ImageConstant.imgEllipse4164x64,
                                      height: getSize(
                                        85.00,
                                      ),
                                      width: getSize(
                                        85.00,
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 25),
                      Container(
                          margin: getMargin(left: 27, top: 9, right: 23),
                          decoration: AppDecoration.outlineIndigo200.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder4),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                    padding:
                                        getPadding(left: 10, top: 7, bottom: 7),
                                    child: InkWell(
                                        borderRadius:
                                            BorderRadiusStyle.circleBorder37,
                                        onTap: () {
                                          // ignore: unnecessary_statements
                                          officehour();
                                        },
                                        child: ClipRRect(
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(38.50)),
                                            child: CommonImageView(
                                              imagePath:
                                                  ImageConstant.imgRectangle17,
                                              fit: BoxFit.fitWidth,
                                              height: getVerticalSize(63.00),
                                              width: getHorizontalSize(77.00),
                                            )))),
                                GestureDetector(
                                    onTap: () {
                                      // ignore: unnecessary_statements
                                      officehour();
                                    },
                                    child: Padding(
                                        padding: getPadding(
                                            left: 22, top: 21, bottom: 15),
                                        child: Text("Office Hour".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtCookieRegular36
                                                .copyWith(
                                                    letterSpacing: 0.18))))
                              ])),
                      SizedBox(height: 10),
                      Container(
                          margin: getMargin(left: 27, top: 9, right: 23),
                          decoration: AppDecoration.outlineIndigo200.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder4),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                    padding:
                                        getPadding(left: 10, top: 7, bottom: 7),
                                    child: InkWell(
                                        borderRadius:
                                            BorderRadiusStyle.circleBorder37,
                                        onTap: () {
                                          // ignore: unnecessary_statements
                                          timetable();
                                        },
                                        child: ClipRRect(
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(38.50)),
                                            child: CommonImageView(
                                                imagePath: ImageConstant
                                                    .imgRectangle14,
                                                height: getVerticalSize(63.00),
                                                width: getHorizontalSize(77.00),
                                                fit: BoxFit.cover)))),
                                GestureDetector(
                                    onTap: () {
                                      // ignore: unnecessary_statements
                                      timetable();
                                    },
                                    child: Padding(
                                        padding: getPadding(
                                            left: 22, top: 21, bottom: 15),
                                        child: Text("Time Table".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtCookieRegular36
                                                .copyWith(
                                                    letterSpacing: 0.18))))
                              ])),
                      SizedBox(height: 10),
                      Container(
                          margin: getMargin(left: 27, top: 9, right: 23),
                          decoration: AppDecoration.outlineIndigo200.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder4),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                    padding:
                                        getPadding(left: 10, top: 7, bottom: 7),
                                    child: InkWell(
                                        borderRadius:
                                            BorderRadiusStyle.circleBorder37,
                                        onTap: () {
                                          // ignore: unnecessary_statements
                                          meeting();
                                        },
                                        child: ClipRRect(
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(38.50)),
                                            child: CommonImageView(
                                                imagePath: ImageConstant
                                                    .imgRectangle18,
                                                height: getVerticalSize(63.00),
                                                width: getHorizontalSize(77.00),
                                                fit: BoxFit.cover)))),
                                GestureDetector(
                                    onTap: () {
                                      // ignore: unnecessary_statements
                                      meeting();
                                    },
                                    child: Padding(
                                        padding: getPadding(
                                            left: 22, top: 21, bottom: 15),
                                        child: Text("Meeting Request".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtCookieRegular36
                                                .copyWith(
                                                    letterSpacing: 0.18))))
                              ])),
                      Container(
                        height: getVerticalSize(
                          10.00,
                        ),
                        width: getHorizontalSize(
                          196.00,
                        ),
                        margin: getMargin(
                          left: 10,
                          top: 243,
                        ),
                        decoration: AppDecoration.fillWhiteA700,
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.topRight,
                              child: Padding(
                                padding: getPadding(
                                  left: 10,
                                  top: 234,
                                  bottom: 5,
                                ),
                                child: CommonImageView(
                                  imagePath: ImageConstant.imgRectangle15,
                                  height: getVerticalSize(
                                    200.00,
                                  ),
                                  width: getHorizontalSize(
                                    6.00,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  officehour() {
    Get.toNamed(AppRoutes.officehoursTeacherScreen);
  }

  timetable() {
    Get.toNamed(AppRoutes.timetableTeacherScreen);
  }

  meeting() {
    Get.toNamed(AppRoutes.requestsTeacherScreen);
  }
}
