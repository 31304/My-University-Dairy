import 'dart:io';

import 'controller/officehours_teacher_controller.dart';
import 'package:flutter/material.dart';
import 'package:sami_s_application1/core/app_export.dart';
import 'package:sami_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:sami_s_application1/widgets/app_bar/appbar_image_1.dart';
import 'package:sami_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:sami_s_application1/widgets/app_bar/custom_app_bar.dart';
import '../home_teacher_screen/home_teacher_screen.dart';

class OfficehoursTeacherScreen extends StatefulWidget {
  @override
  _OfficehoursTeacherScreen createState() => _OfficehoursTeacherScreen();
}

// ignore: must_be_immutable
class _OfficehoursTeacherScreen extends State<OfficehoursTeacherScreen> {
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
              title: Text("Office Hour"),
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                      Container(
                          decoration: AppDecoration.fillBlue50.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderBL25),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                    padding: getPadding(
                                        left: 10, top: 23, bottom: 23),
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.circular(
                                            getHorizontalSize(42.50)),
                                        child: CommonImageView(
                                            imagePath:
                                                ImageConstant.imgEllipse4164x64,
                                            height: getSize(85.00),
                                            width: getSize(85.00),
                                            fit: BoxFit.cover))),
                                Padding(
                                    padding: getPadding(
                                        left: 39, top: 44, bottom: 32),
                                    child: Text("lbl_irum_anayat".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtCookieRegular48
                                            .copyWith(letterSpacing: 0.24)))
                              ])),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 23, top: 29, right: 23),
                              child: Text("msg_human_computer_intraction".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtCookieRegular36
                                      .copyWith(letterSpacing: 0.18)))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 3, top: 19, right: 3),
                              child: CommonImageView(
                                  imagePath: ImageConstant.imgWhatsappimage,
                                  height: getVerticalSize(157.00),
                                  width: getHorizontalSize(387.00)))),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              margin: getMargin(left: 23, top: 41, right: 23),
                              decoration: AppDecoration.outlineIndigo200
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder4),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                        padding: getPadding(
                                            left: 36, top: 19, bottom: 17),
                                        child: Text("lbl_office_hour2".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtCookieRegular36
                                                .copyWith(
                                                    letterSpacing: 0.18))),
                                    Switch(
                                      value: isSwitched,
                                      onChanged: (value) {
                                        setState(() {
                                          isSwitched = value;
                                          if (isSwitched == true) {
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              SnackBar(
                                                content: const Text(
                                                    'Office Hour on Sucessfully!'),
                                                duration: const Duration(
                                                    milliseconds: 1500),
                                                backgroundColor:
                                                    Colors.blue[200],
                                              ),
                                            );
                                          } else {
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              SnackBar(
                                                content: const Text(
                                                    'Office Hour off Sucessfully!'),
                                                duration: const Duration(
                                                    milliseconds: 1500),
                                                backgroundColor:
                                                    Colors.blue[200],
                                              ),
                                            );
                                          }
                                          print(isSwitched);
                                        });
                                      },
                                      activeTrackColor: Colors.lightGreenAccent,
                                      activeColor: Colors.green,
                                    ),
                                  ]))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(right: 3),
                              child: CommonImageView(
                                  imagePath: ImageConstant.imgRectangle192,
                                  height: getVerticalSize(274.00),
                                  width: getHorizontalSize(390.00))))
                    ])))));
  }

  onTapEllipseThirty8() {
    Get.toNamed(AppRoutes.homeTeacherScreen);
  }
}
