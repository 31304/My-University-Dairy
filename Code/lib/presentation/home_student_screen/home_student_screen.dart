import 'dart:io';

import 'controller/home_student_controller.dart';
import 'package:flutter/material.dart';
import 'package:sami_s_application1/core/app_export.dart';

var firstswitch = false;
var secondswitch = false;
var threeswitch = false;
var fourswitch = false;
var fiveswitch = false;
var sixswitch = false;

class HomeStudentScreen extends GetWidget<HomeStudentController> {
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
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          height: getVerticalSize(
                            335.00,
                          ),
                          width: size.width,
                          child: Stack(
                            alignment: Alignment.bottomLeft,
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Card(
                                  clipBehavior: Clip.antiAlias,
                                  elevation: 0,
                                  margin: getMargin(
                                    top: 1,
                                    bottom: 4,
                                  ),
                                  color: ColorConstant.indigo800,
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadiusStyle.customBorderBL40,
                                  ),
                                  child: Container(
                                    height: getVerticalSize(
                                      400.00,
                                    ),
                                    width: size.width,
                                    decoration:
                                        AppDecoration.fillIndigo800.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.customBorderBL40,
                                    ),
                                    child: Stack(
                                      alignment: Alignment.bottomRight,
                                      children: [
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Container(
                                            width: getHorizontalSize(
                                              201.00,
                                            ),
                                            margin: getMargin(
                                              left: 20,
                                              top: 75,
                                              right: 20,
                                              bottom: 75,
                                            ),
                                            child: Text(
                                              "msg_welcome_to_my_university".tr,
                                              maxLines: null,
                                              textAlign: TextAlign.center,
                                              style: AppStyle.txtPraiseRegular35
                                                  .copyWith(
                                                letterSpacing: 0.18,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.bottomRight,
                                          child: Container(
                                            height: getVerticalSize(
                                              191.00,
                                            ),
                                            width: getHorizontalSize(
                                              287.00,
                                            ),
                                            margin: getMargin(
                                              left: 10,
                                              top: 24,
                                              bottom: 24,
                                            ),
                                            child: Stack(
                                              alignment: Alignment.bottomLeft,
                                              children: [
                                                Align(
                                                  alignment: Alignment.topRight,
                                                  child: Padding(
                                                    padding: getPadding(
                                                      left: 10,
                                                      bottom: 10,
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
                                                            .imgEllipse26151x128,
                                                        height: getVerticalSize(
                                                          151.00,
                                                        ),
                                                        width:
                                                            getHorizontalSize(
                                                          128.00,
                                                        ),
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  child: Padding(
                                                    padding: getPadding(
                                                      top: 10,
                                                      right: 10,
                                                    ),
                                                    child: Text(
                                                      "lbl_welcome_imran".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
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
                                      ],
                                    ),
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
                                      imagePath: ImageConstant.imgEllipse41,
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
                                          contact();
                                        },
                                        child: ClipRRect(
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(38.50)),
                                            child: CommonImageView(
                                                imagePath: ImageConstant
                                                    .imgRectangle15,
                                                height: getVerticalSize(63.00),
                                                width: getHorizontalSize(77.00),
                                                fit: BoxFit.cover)))),
                                GestureDetector(
                                    onTap: () {
                                      // ignore: unnecessary_statements
                                      contact();
                                    },
                                    child: Padding(
                                        padding: getPadding(
                                            left: 22, top: 21, bottom: 15),
                                        child: Text("Contact teacher".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtCookieRegular36
                                                .copyWith(
                                                    letterSpacing: 0.18))))
                              ])),
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
                                          notification();
                                        },
                                        child: ClipRRect(
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(38.50)),
                                            child: CommonImageView(
                                                imagePath: ImageConstant
                                                    .imgRectangle16,
                                                height: getVerticalSize(63.00),
                                                width: getHorizontalSize(77.00),
                                                fit: BoxFit.cover)))),
                                GestureDetector(
                                    onTap: () {
                                      // ignore: unnecessary_statements
                                      notification();
                                    },
                                    child: Padding(
                                        padding: getPadding(
                                            left: 22, top: 21, bottom: 15),
                                        child: Text("Notification Setting".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtCookieRegular36
                                                .copyWith(
                                                    letterSpacing: 0.18))))
                              ])),
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
                                          event();
                                        },
                                        child: ClipRRect(
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(38.50)),
                                            child: CommonImageView(
                                                imagePath:
                                                    ImageConstant.imgEllipse38,
                                                height: getVerticalSize(63.00),
                                                width: getHorizontalSize(77.00),
                                                fit: BoxFit.cover)))),
                                GestureDetector(
                                    onTap: () {
                                      // ignore: unnecessary_statements
                                      event();
                                    },
                                    child: Padding(
                                        padding: getPadding(
                                            left: 22, top: 21, bottom: 15),
                                        child: Text("Events".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtCookieRegular36
                                                .copyWith(
                                                    letterSpacing: 0.18))))
                              ])),
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
                                          announcement();
                                        },
                                        child: ClipRRect(
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(38.50)),
                                            child: CommonImageView(
                                                imagePath:
                                                    ImageConstant.imgEllipse40,
                                                height: getVerticalSize(63.00),
                                                width: getHorizontalSize(77.00),
                                                fit: BoxFit.cover)))),
                                GestureDetector(
                                    onTap: () {
                                      // ignore: unnecessary_statements
                                      announcement();
                                    },
                                    child: Padding(
                                        padding: getPadding(
                                            left: 22, top: 21, bottom: 15),
                                        child: Text("Announcement".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtCookieRegular36
                                                .copyWith(
                                                    letterSpacing: 0.18))))
                              ])),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(right: 3),
                              child: CommonImageView(
                                  imagePath: ImageConstant.imgRectangle191,
                                  height: getVerticalSize(274.00),
                                  width: getHorizontalSize(390.00)))),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              height: getVerticalSize(55.00),
                              width: getHorizontalSize(1.00),
                              margin: getMargin(left: 40, right: 40),
                              decoration: BoxDecoration(
                                  color: ColorConstant.bluegray101)))
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

  notification() {
    Get.toNamed(AppRoutes.notificationStudentScreen);
  }

  timetable() {
    Get.toNamed(AppRoutes.timetableStudentScreen);
  }

  contact() {
    Get.toNamed(AppRoutes.contactStudentScreen);
  }

  event() {
    Get.toNamed(AppRoutes.eventsStudentScreen);
  }

  announcement() {
    Get.toNamed(AppRoutes.announcementStudentScreen);
  }
}
