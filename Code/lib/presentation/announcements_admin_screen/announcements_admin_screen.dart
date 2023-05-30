import 'dart:io';

import 'controller/announcements_admin_controller.dart';
import 'package:flutter/material.dart';
import 'package:sami_s_application1/core/app_export.dart';
import 'package:sami_s_application1/widgets/app_bar/appbar_circleimage.dart';
import 'package:sami_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:sami_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:sami_s_application1/widgets/custom_button.dart';

class AnnouncementsAdminScreen extends GetWidget<AnnouncementsAdminController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
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
              title: Text("Announcement"),
              backgroundColor: Color.fromRGBO(59, 72, 128, 1),
              leading: IconButton(
                icon: Icon(Icons.arrow_back,
                    color: Color.fromARGB(255, 255, 255, 255)),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ),
            body: SingleChildScrollView(
                child: Padding(
                    padding: getPadding(left: 24, top: 32),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          CustomButton(
                            width: 343,
                            text: "msg_cancelled_classes".tr,
                            margin: getMargin(left: 1, right: 10),
                            fontStyle: ButtonFontStyle.CookieRegular40,
                            onTap: classes,
                          ),
                          CustomButton(
                              width: 343,
                              text: "lbl_make_up_classes2".tr,
                              margin: getMargin(top: 17, right: 10),
                              padding: ButtonPadding.PaddingAll18,
                              fontStyle: ButtonFontStyle.CookieRegular40),
                          CustomButton(
                              width: 343,
                              text: "lbl_events".tr,
                              margin: getMargin(top: 17, right: 10),
                              fontStyle: ButtonFontStyle.CookieRegular40),
                          CustomButton(
                              width: 343,
                              text: "lbl_workshops".tr,
                              margin: getMargin(left: 1, top: 17, right: 10),
                              padding: ButtonPadding.PaddingAll18,
                              fontStyle: ButtonFontStyle.CookieRegular40),
                          CustomButton(
                              width: 343,
                              text: "lbl_seminars".tr,
                              margin: getMargin(left: 1, top: 17, right: 10),
                              fontStyle: ButtonFontStyle.CookieRegular40),
                          Padding(
                              padding: getPadding(left: 28, top: 60, right: 28),
                              child: CommonImageView(
                                  imagePath: ImageConstant.imgImage16,
                                  height: getVerticalSize(225.00),
                                  width: getHorizontalSize(285.00))),
                        ])))));
  }

  onTapEllipseThirtyOne() {
    Get.toNamed(AppRoutes.homeAdminScreen);
  }

  classes() {
    Get.toNamed(AppRoutes.announcements2AdminScreen);
  }
}
