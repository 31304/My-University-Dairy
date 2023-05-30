import 'dart:io';

import 'controller/home_admin_controller.dart';
import 'package:flutter/material.dart';
import 'package:sami_s_application1/core/app_export.dart';

class HomeAdminScreen extends GetWidget<HomeAdminController> {
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
                    Get.toNamed(AppRoutes.homeAdminScreen);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.event),
                  title: const Text(' Events '),
                  onTap: () {
                    Get.toNamed(AppRoutes.eventsAdminScreen);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.announcement),
                  title: const Text(' Announcement'),
                  onTap: () {
                    Get.toNamed(AppRoutes.announcementsAdminScreen);
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
                            344.00,
                          ),
                          width: size.width,
                          child: Stack(
                            alignment: Alignment.bottomLeft,
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  margin: getMargin(
                                    bottom: 10,
                                  ),
                                  decoration:
                                      AppDecoration.fillIndigo800.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.customBorderBL40,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                          padding: getPadding(
                                            left: 10,
                                            top: 52,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                width: getHorizontalSize(
                                                  201.00,
                                                ),
                                                margin: getMargin(
                                                  top: 23,
                                                  bottom: 50,
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
                                                  left: 43,
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
                                                        .imgEllipse262,
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
                                            left: 74,
                                            top: 72,
                                            right: 74,
                                            bottom: 12,
                                          ),
                                          child: Text(
                                            "lbl_admin_faculty2".tr,
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
                                        53.50,
                                      ),
                                    ),
                                    child: CommonImageView(
                                      imagePath: ImageConstant.imgEllipse55,
                                      height: getSize(
                                        107.00,
                                      ),
                                      width: getSize(
                                        107.00,
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
                                          announcment();
                                        },
                                        child: ClipRRect(
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(38.50)),
                                            child: CommonImageView(
                                              imagePath:
                                                  ImageConstant.imgEllipse40,
                                              fit: BoxFit.fitWidth,
                                              height: getVerticalSize(63.00),
                                              width: getHorizontalSize(77.00),
                                            )))),
                                GestureDetector(
                                    onTap: () {
                                      // ignore: unnecessary_statements
                                      announcment();
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
                      SizedBox(height: 25),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: getVerticalSize(
                            79.00,
                          ),
                          width: getHorizontalSize(
                            343.00,
                          ),
                          margin: getMargin(
                            left: 25,
                            top: 19,
                            right: 25,
                          ),
                          child: Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Card(
                                  clipBehavior: Clip.antiAlias,
                                  elevation: 0,
                                  margin: getMargin(
                                    bottom: 2,
                                  ),
                                  color: ColorConstant.blue50,
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                      color: ColorConstant.indigo200,
                                      width: getHorizontalSize(
                                        1.00,
                                      ),
                                    ),
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder4,
                                  ),
                                  child: Container(
                                    height: getVerticalSize(
                                      77.00,
                                    ),
                                    width: getHorizontalSize(
                                      343.00,
                                    ),
                                    decoration:
                                        AppDecoration.outlineIndigo200.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder4,
                                    ),
                                    child: Stack(
                                      children: [
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                            padding: getPadding(
                                              left: 10,
                                              top: 13,
                                              right: 10,
                                              bottom: 13,
                                            ),
                                            child: CommonImageView(
                                              imagePath:
                                                  ImageConstant.imgRectangle14,
                                              height: getVerticalSize(
                                                50.00,
                                              ),
                                              width: getHorizontalSize(
                                                72.00,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                  width: getHorizontalSize(
                                    125.00,
                                  ),
                                  margin: getMargin(
                                    left: 79,
                                    top: 10,
                                    right: 79,
                                  ),
                                  child: Text(
                                    "msg_timetable_scheduling".tr,
                                    maxLines: null,
                                    textAlign: TextAlign.center,
                                    style: AppStyle.txtCookieRegular36.copyWith(
                                      letterSpacing: 0.18,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 32),
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
                                              fit: BoxFit.fitWidth,
                                              height: getVerticalSize(63.00),
                                              width: getHorizontalSize(77.00),
                                            )))),
                                GestureDetector(
                                    onTap: () {
                                      // ignore: unnecessary_statements
                                      event();
                                    },
                                    child: Padding(
                                        padding: getPadding(
                                            left: 22, top: 21, bottom: 15),
                                        child: Text("Manage Events".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtCookieRegular36
                                                .copyWith(
                                                    letterSpacing: 0.18))))
                              ])),
                      Container(
                        height: getVerticalSize(
                          0.00,
                        ),
                        width: getHorizontalSize(
                          2.00,
                        ),
                        margin: getMargin(
                          left: 10,
                          top: 251,
                        ),
                        decoration: AppDecoration.fillWhiteA700,
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.topRight,
                              child: Padding(
                                padding: getPadding(
                                  left: 10,
                                  top: 10,
                                  bottom: 5,
                                ),
                                child: CommonImageView(
                                  imagePath: ImageConstant.imgLogosamplebyta1,
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

  announcment() {
    Get.toNamed(AppRoutes.announcementsAdminScreen);
  }

  event() {
    Get.toNamed(AppRoutes.eventsAdminScreen);
  }
}
