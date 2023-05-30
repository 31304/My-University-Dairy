import 'dart:io';

import 'controller/events_admin_controller.dart';
import 'package:flutter/material.dart';
import 'package:sami_s_application1/core/app_export.dart';
import 'package:sami_s_application1/widgets/app_bar/appbar_circleimage.dart';
import 'package:sami_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:sami_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:sami_s_application1/widgets/custom_button.dart';

class EventsAdminScreen extends GetWidget<EventsAdminController> {
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
              title: Text("Event"),
              backgroundColor: Color.fromRGBO(59, 72, 128, 1),
              leading: IconButton(
                icon: Icon(Icons.arrow_back,
                    color: Color.fromARGB(255, 255, 255, 255)),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ),
            body: SingleChildScrollView(
                child: Padding(
                    padding: getPadding(left: 11),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                  height: getVerticalSize(433.00),
                                  width: getHorizontalSize(364.00),
                                  margin: getMargin(right: 10),
                                  child: Stack(
                                      alignment: Alignment.topCenter,
                                      children: [
                                        Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Container(
                                                margin: getMargin(top: 10),
                                                decoration: AppDecoration
                                                    .fillBluegray101
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder35),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      GestureDetector(
                                                          onTap: () {
                                                            onTapButton();
                                                          },
                                                          child: Container(
                                                              width:
                                                                  getHorizontalSize(
                                                                      199.00),
                                                              margin: getMargin(
                                                                  left: 82,
                                                                  top: 14,
                                                                  right: 82),
                                                              decoration: AppDecoration
                                                                  .fillBlue50
                                                                  .copyWith(
                                                                      borderRadius:
                                                                          BorderRadiusStyle
                                                                              .circleBorder32),
                                                              child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                                42,
                                                                            top:
                                                                                8,
                                                                            right:
                                                                                40,
                                                                            bottom:
                                                                                13),
                                                                        child: Text(
                                                                            "lbl_add_event"
                                                                                .tr,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtCookieRegular36.copyWith(letterSpacing: 0.18)))
                                                                  ]))),
                                                      CustomButton(
                                                          width: 199,
                                                          text:
                                                              "lbl_view_events"
                                                                  .tr,
                                                          margin: getMargin(
                                                              left: 82,
                                                              top: 14,
                                                              right: 79),
                                                          variant: ButtonVariant
                                                              .FillBlue50,
                                                          shape: ButtonShape
                                                              .CircleBorder31,
                                                          padding: ButtonPadding
                                                              .PaddingAll7,
                                                          fontStyle: ButtonFontStyle
                                                              .CookieRegular36Indigo400,
                                                          onTap:
                                                              onTapViewevents),
                                                      CustomButton(
                                                          width: 199,
                                                          text:
                                                              "lbl_edit_events"
                                                                  .tr,
                                                          margin: getMargin(
                                                              left: 82,
                                                              top: 18,
                                                              right: 82),
                                                          variant: ButtonVariant
                                                              .FillBlue50,
                                                          shape: ButtonShape
                                                              .CircleBorder31,
                                                          padding: ButtonPadding
                                                              .PaddingAll7,
                                                          fontStyle: ButtonFontStyle
                                                              .CookieRegular36Indigo400,
                                                          onTap:
                                                              onTapEditevents),
                                                      CustomButton(
                                                          width: 199,
                                                          text:
                                                              "lbl_remove_event"
                                                                  .tr,
                                                          margin: getMargin(
                                                              left: 82,
                                                              top: 18,
                                                              right: 82,
                                                              bottom: 27),
                                                          variant: ButtonVariant
                                                              .FillBlue50,
                                                          shape: ButtonShape
                                                              .CircleBorder31,
                                                          padding: ButtonPadding
                                                              .PaddingAll7,
                                                          fontStyle: ButtonFontStyle
                                                              .CookieRegular36Indigo400,
                                                          onTap:
                                                              onTapRemoveevent)
                                                    ]))),
                                        Align(
                                            alignment: Alignment.topCenter,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 91,
                                                    right: 91,
                                                    bottom: 10),
                                                child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            getHorizontalSize(
                                                                90.50)),
                                                    child: CommonImageView(
                                                        imagePath: ImageConstant
                                                            .imgEllipse38121x181,
                                                        height: getVerticalSize(
                                                            121.00),
                                                        width:
                                                            getHorizontalSize(
                                                                181.00),
                                                        fit: BoxFit.cover))))
                                      ]))),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding:
                                      getPadding(left: 91, top: 201, right: 91),
                                  child: CommonImageView(
                                      imagePath: ImageConstant.imgImage13,
                                      height: getVerticalSize(156.00),
                                      width: getHorizontalSize(169.00)))),
                        ])))));
  }

  onTapButton() {
    Get.toNamed(AppRoutes.addeventAdminScreen);
  }

  onTapViewevents() {
    Get.toNamed(AppRoutes.vieweventAdminScreen);
  }

  onTapEditevents() {
    Get.toNamed(AppRoutes.editeventAdminScreen);
  }

  onTapRemoveevent() {
    Get.toNamed(AppRoutes.removeeventAdminScreen);
  }

  onTapEllipseThirtyNine() {
    Get.toNamed(AppRoutes.homeAdminScreen);
  }
}
