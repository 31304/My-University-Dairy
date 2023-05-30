import 'dart:io';

import 'package:dropdown_button2/dropdown_button2.dart';

import 'controller/announcement_student_controller.dart';
import 'package:flutter/material.dart';
import 'package:sami_s_application1/core/app_export.dart';
import 'package:sami_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:sami_s_application1/widgets/app_bar/appbar_image_1.dart';
import 'package:sami_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:sami_s_application1/widgets/app_bar/custom_app_bar.dart';

final List<String> items = [
  '27-11-2022',
  '26-11-2022',
  '25-11-2022',
  '24-11-2022',
  '23-11-2022',
  '22-11-2022',
  '21-11-2022',
  '20-11-2022',
];
String? selectedValue;
final List<String> items2 = [
  'Left',
  'Right',
  'Top',
  'Bottom',
  'Grid',
  'List',
];
String? selectedValues;

class AnnouncementStudentScreen extends StatefulWidget {
  _AnnouncementStudentScreen createState() => _AnnouncementStudentScreen();
}

class _AnnouncementStudentScreen extends State<AnnouncementStudentScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.bluegray100,
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
              title: Text("Announcement"),
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
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 8, top: 22, right: 16),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      child: DropdownButtonHideUnderline(
                                        child: DropdownButton2(
                                          isExpanded: true,
                                          hint: Row(
                                            children: const [
                                              Icon(
                                                Icons.list,
                                                size: 6,
                                                color: Color.fromARGB(
                                                    255, 255, 255, 255),
                                              ),
                                              SizedBox(
                                                width: 2,
                                              ),
                                              Expanded(
                                                child: Text(
                                                  'Select Date',
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.bold,
                                                    color: Color.fromARGB(
                                                        255, 2, 2, 2),
                                                  ),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                              ),
                                            ],
                                          ),
                                          items: items
                                              .map((item) =>
                                                  DropdownMenuItem<String>(
                                                    value: item,
                                                    child: Text(
                                                      item,
                                                      style: const TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Color.fromARGB(
                                                            255, 0, 0, 0),
                                                      ),
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                    ),
                                                  ))
                                              .toList(),
                                          value: selectedValue,
                                          onChanged: (value) {
                                            setState(() {
                                              selectedValue = value as String;
                                            });
                                          },
                                          icon: const Icon(
                                            Icons.arrow_forward_ios_outlined,
                                          ),
                                          iconSize: 14,
                                          iconEnabledColor:
                                              Color.fromARGB(255, 0, 0, 0),
                                          iconDisabledColor:
                                              Color.fromRGBO(255, 255, 255, 1),
                                          buttonHeight: 50,
                                          buttonWidth: 160,
                                          buttonPadding: const EdgeInsets.only(
                                              left: 14, right: 14),
                                          buttonDecoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(14),
                                            border: Border.all(
                                              color: Color.fromARGB(
                                                  66, 255, 255, 255),
                                            ),
                                            color: Color.fromARGB(
                                                255, 255, 255, 255),
                                          ),
                                          buttonElevation: 2,
                                          itemHeight: 40,
                                          itemPadding: const EdgeInsets.only(
                                              left: 14, right: 14),
                                          dropdownMaxHeight: 100,
                                          dropdownWidth: 150,
                                          dropdownPadding: null,
                                          dropdownDecoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(14),
                                            color: Color.fromARGB(
                                                255, 255, 254, 254),
                                          ),
                                          dropdownElevation: 8,
                                          scrollbarRadius:
                                              const Radius.circular(40),
                                          scrollbarThickness: 3,
                                          scrollbarAlwaysShow: true,
                                          offset: const Offset(-20, 0),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: DropdownButtonHideUnderline(
                                        child: DropdownButton2(
                                          isExpanded: true,
                                          hint: Row(
                                            children: const [
                                              Icon(
                                                Icons.list,
                                                size: 6,
                                                color: Color.fromARGB(
                                                    255, 255, 255, 255),
                                              ),
                                              SizedBox(
                                                width: 2,
                                              ),
                                              Expanded(
                                                child: Text(
                                                  'Select View',
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.bold,
                                                    color: Color.fromARGB(
                                                        255, 2, 2, 2),
                                                  ),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                              ),
                                            ],
                                          ),
                                          items: items2
                                              .map((item) =>
                                                  DropdownMenuItem<String>(
                                                    value: item,
                                                    child: Text(
                                                      item,
                                                      style: const TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Color.fromARGB(
                                                            255, 0, 0, 0),
                                                      ),
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                    ),
                                                  ))
                                              .toList(),
                                          value: selectedValues,
                                          onChanged: (value) {
                                            setState(() {
                                              selectedValues = value as String;
                                            });
                                          },
                                          icon: const Icon(
                                            Icons.arrow_forward_ios_outlined,
                                          ),
                                          iconSize: 14,
                                          iconEnabledColor:
                                              Color.fromARGB(255, 0, 0, 0),
                                          iconDisabledColor:
                                              Color.fromRGBO(255, 255, 255, 1),
                                          buttonHeight: 50,
                                          buttonWidth: 160,
                                          buttonPadding: const EdgeInsets.only(
                                              left: 14, right: 14),
                                          buttonDecoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(14),
                                            border: Border.all(
                                              color: Color.fromARGB(
                                                  66, 255, 255, 255),
                                            ),
                                            color: Color.fromARGB(
                                                255, 255, 255, 255),
                                          ),
                                          buttonElevation: 2,
                                          itemHeight: 40,
                                          itemPadding: const EdgeInsets.only(
                                              left: 14, right: 14),
                                          dropdownMaxHeight: 100,
                                          dropdownWidth: 150,
                                          dropdownPadding: null,
                                          dropdownDecoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(14),
                                            color: Color.fromARGB(
                                                255, 255, 254, 254),
                                          ),
                                          dropdownElevation: 8,
                                          scrollbarRadius:
                                              const Radius.circular(40),
                                          scrollbarThickness: 3,
                                          scrollbarAlwaysShow: true,
                                          offset: const Offset(-20, 0),
                                        ),
                                      ),
                                    ),
                                  ]))),
                      Container(
                          height: getVerticalSize(410.00),
                          width: size.width,
                          margin: getMargin(top: 20),
                          child:
                              Stack(alignment: Alignment.topCenter, children: [
                            Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                    margin: getMargin(right: 1, bottom: 10),
                                    decoration: AppDecoration.fillBlue50,
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: getPadding(
                                                      left: 6,
                                                      top: 1,
                                                      right: 76,
                                                      bottom: 44),
                                                  child: Text(
                                                      "msg_makeup_class_of".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtCookieRegular32
                                                          .copyWith(
                                                              letterSpacing:
                                                                  0.16))))
                                        ]))),
                            Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                    margin: getMargin(
                                        top: 82, right: 1, bottom: 82),
                                    decoration: AppDecoration.fillIndigo100,
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: getPadding(
                                                      left: 6,
                                                      top: 8,
                                                      right: 89,
                                                      bottom: 37),
                                                  child: Text(
                                                      "msg_linear_algebra_class"
                                                          .tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtCookieRegular32
                                                          .copyWith(
                                                              letterSpacing:
                                                                  0.16))))
                                        ]))),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                    margin: getMargin(top: 164, bottom: 164),
                                    decoration: AppDecoration.fillBlue50,
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: getPadding(
                                                      left: 6,
                                                      top: 5,
                                                      right: 235,
                                                      bottom: 40),
                                                  child: Text(
                                                      "lbl_tomorrow_is_off".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtCookieRegular32
                                                          .copyWith(
                                                              letterSpacing:
                                                                  0.16))))
                                        ]))),
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                    margin: getMargin(
                                        top: 82, right: 1, bottom: 82),
                                    decoration: AppDecoration.fillIndigo100,
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: getPadding(
                                                      left: 6,
                                                      top: 8,
                                                      right: 125,
                                                      bottom: 37),
                                                  child: Text(
                                                      "msg_lorem_ipsum_dolor"
                                                          .tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtCookieRegular32
                                                          .copyWith(
                                                              letterSpacing:
                                                                  0.16))))
                                        ]))),
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                    margin: getMargin(top: 10, right: 1),
                                    decoration: AppDecoration.fillBlue50,
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: getPadding(
                                                      left: 6,
                                                      top: 8,
                                                      right: 10),
                                                  child: Text(
                                                      "msg_lorem_ipsum_dolor"
                                                          .tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtCookieRegular32
                                                          .copyWith(
                                                              letterSpacing:
                                                                  0.16)))),
                                          Align(
                                              alignment: Alignment.centerRight,
                                              child: Padding(
                                                  padding: getPadding(
                                                      left: 245,
                                                      top: 16,
                                                      right: 8,
                                                      bottom: 1),
                                                  child: Text(
                                                      "msg_23_50_sep_21_2022"
                                                          .tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRomanMedium16
                                                          .copyWith(
                                                              letterSpacing:
                                                                  0.02))))
                                        ]))),
                            Align(
                                alignment: Alignment.topRight,
                                child: Padding(
                                    padding: getPadding(
                                        left: 10,
                                        top: 66,
                                        right: 9,
                                        bottom: 66),
                                    child: Text("msg_23_50_sep_21_2022".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRobotoRomanMedium16
                                            .copyWith(letterSpacing: 0.02)))),
                            Align(
                                alignment: Alignment.topRight,
                                child: Padding(
                                    padding: getPadding(
                                        left: 10,
                                        top: 145,
                                        right: 9,
                                        bottom: 145),
                                    child: Text("msg_23_50_sep_21_2022".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRobotoRomanMedium16
                                            .copyWith(letterSpacing: 0.02)))),
                            Align(
                                alignment: Alignment.bottomRight,
                                child: Padding(
                                    padding: getPadding(
                                        left: 10,
                                        top: 161,
                                        right: 9,
                                        bottom: 161),
                                    child: Text("msg_23_50_sep_21_2022".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRobotoRomanMedium16
                                            .copyWith(letterSpacing: 0.02)))),
                            Align(
                                alignment: Alignment.bottomRight,
                                child: Padding(
                                    padding: getPadding(
                                        left: 10,
                                        top: 81,
                                        right: 9,
                                        bottom: 81),
                                    child: Text("msg_23_50_sep_21_2022".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRobotoRomanMedium16
                                            .copyWith(letterSpacing: 0.02))))
                          ])),
                      Container(
                          height: getVerticalSize(247.00),
                          width: size.width,
                          child:
                              Stack(alignment: Alignment.centerLeft, children: [
                            Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                    margin: getMargin(bottom: 10),
                                    decoration: AppDecoration.fillIndigo100,
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: getPadding(
                                                      left: 6,
                                                      top: 2,
                                                      right: 126,
                                                      bottom: 43),
                                                  child: Text(
                                                      "msg_lorem_ipsum_dolor"
                                                          .tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtCookieRegular32
                                                          .copyWith(
                                                              letterSpacing:
                                                                  0.16))))
                                        ]))),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                    height: getVerticalSize(82.00),
                                    width: size.width,
                                    margin: getMargin(top: 82, bottom: 82),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.blue50))),
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                    margin: getMargin(top: 10, bottom: 1),
                                    decoration: AppDecoration.fillIndigo100,
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: getPadding(
                                                      left: 6,
                                                      top: 5,
                                                      right: 126,
                                                      bottom: 40),
                                                  child: Text(
                                                      "msg_lorem_ipsum_dolor"
                                                          .tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtCookieRegular32
                                                          .copyWith(
                                                              letterSpacing:
                                                                  0.16))))
                                        ]))),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                    padding: getPadding(
                                        left: 6,
                                        top: 78,
                                        right: 10,
                                        bottom: 78),
                                    child: Text("msg_lorem_ipsum_dolor".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtCookieRegular32
                                            .copyWith(letterSpacing: 0.16)))),
                            Align(
                                alignment: Alignment.topRight,
                                child: Padding(
                                    padding: getPadding(
                                        left: 10,
                                        top: 61,
                                        right: 9,
                                        bottom: 61),
                                    child: Text("msg_23_50_sep_21_2022".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRobotoRomanMedium16
                                            .copyWith(letterSpacing: 0.02)))),
                            Align(
                                alignment: Alignment.bottomRight,
                                child: Padding(
                                    padding: getPadding(
                                        left: 10,
                                        top: 82,
                                        right: 9,
                                        bottom: 82),
                                    child: Text("msg_23_50_sep_21_2022".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRobotoRomanMedium16
                                            .copyWith(letterSpacing: 0.02)))),
                            Align(
                                alignment: Alignment.bottomRight,
                                child: Padding(
                                    padding:
                                        getPadding(left: 10, top: 10, right: 9),
                                    child: Text("msg_23_50_sep_21_2022".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRobotoRomanMedium16
                                            .copyWith(letterSpacing: 0.02))))
                          ])),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: getHorizontalSize(40.00),
                              margin: getMargin(
                                  left: 176, top: 4, right: 176, bottom: 5),
                              decoration: AppDecoration.fillIndigo800.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.circleBorder20),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                              )))
                    ])))));
  }

  onTapEllipseThirty5() {
    Get.toNamed(AppRoutes.homeStudentScreen);
  }
}
