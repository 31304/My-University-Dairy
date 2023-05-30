import 'dart:io';

import 'package:dropdown_button2/dropdown_button2.dart';

import '../notification_student_screen/widgets/listcancelledclass_item_widget.dart';
import 'controller/notification_student_controller.dart';
import 'models/listcancelledclass_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sami_s_application1/core/app_export.dart';
import 'package:sami_s_application1/widgets/app_bar/appbar_circleimage.dart';
import 'package:sami_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:sami_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:sami_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:sami_s_application1/widgets/custom_button.dart';
import '../home_student_screen/home_student_screen.dart';

final List<String> items = [
  '10 min',
  '20 min',
  '30 min',
  '1 hour',
  '8 hour',
  '12 hour',
  '1 day',
];
String? selectedValue;
final List<String> items2 = [
  '10 min',
  '20 min',
  '30 min',
  '1 hour',
  '8 hour',
  '12 hour',
  '1 day',
];
String? selectedValues;
final List<String> items11 = [
  '10 min',
  '20 min',
  '30 min',
  '1 hour',
  '8 hour',
  '12 hour',
  '1 day',
];
String? selectedValue11;
final List<String> items22 = [
  '10 min',
  '20 min',
  '30 min',
  '1 hour',
  '8 hour',
  '12 hour',
  '1 day',
];
String? selectedValues22;
final List<String> items111 = [
  '10 min',
  '20 min',
  '30 min',
  '1 hour',
  '8 hour',
  '12 hour',
  '1 day',
];
String? selectedValue111;
final List<String> items222 = [
  '10 min',
  '20 min',
  '30 min',
  '1 hour',
  '8 hour',
  '12 hour',
  '1 day',
];
String? selectedValues222;

class NotificationStudentScreen extends StatefulWidget {
  @override
  _NotificationStudentScreen createState() => _NotificationStudentScreen();
}

class _NotificationStudentScreen extends State<NotificationStudentScreen> {
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
              title: Text("Notification"),
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
                          decoration: AppDecoration.fillBluegray101,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                    padding: getPadding(
                                        left: 15, top: 14, bottom: 5),
                                    child: Text("lbl_regular_classes".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRobotoRomanRegular32
                                            .copyWith(letterSpacing: 0.16))),
                              ])),
                      Container(
                          height: getVerticalSize(3.00),
                          width: size.width,
                          decoration:
                              BoxDecoration(color: ColorConstant.black900)),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 15, top: 20, right: 15),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                        height: getVerticalSize(130.00),
                                        width: getHorizontalSize(361.00),
                                        child: Stack(
                                            alignment: Alignment.topLeft,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  child: Container(
                                                      margin: getMargin(
                                                          top: 10, right: 10),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 0,
                                                                      top: 10,
                                                                      right: 0,
                                                                      bottom:
                                                                          0),
                                                              child:
                                                                  DropdownButtonHideUnderline(
                                                                child:
                                                                    DropdownButton2(
                                                                  isExpanded:
                                                                      true,
                                                                  hint: Row(
                                                                    children: const [
                                                                      Icon(
                                                                        Icons
                                                                            .list,
                                                                        size: 6,
                                                                        color: Color.fromARGB(
                                                                            255,
                                                                            255,
                                                                            255,
                                                                            255),
                                                                      ),
                                                                      SizedBox(
                                                                        width:
                                                                            2,
                                                                      ),
                                                                      Expanded(
                                                                        child:
                                                                            Text(
                                                                          '2 min',
                                                                          style:
                                                                              TextStyle(
                                                                            fontSize:
                                                                                14,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                            color: Color.fromARGB(
                                                                                255,
                                                                                2,
                                                                                2,
                                                                                2),
                                                                          ),
                                                                          overflow:
                                                                              TextOverflow.ellipsis,
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  items: items
                                                                      .map((item) =>
                                                                          DropdownMenuItem<
                                                                              String>(
                                                                            value:
                                                                                item,
                                                                            child:
                                                                                Text(
                                                                              item,
                                                                              style: const TextStyle(
                                                                                fontSize: 14,
                                                                                fontWeight: FontWeight.bold,
                                                                                color: Color.fromARGB(255, 0, 0, 0),
                                                                              ),
                                                                              overflow: TextOverflow.ellipsis,
                                                                            ),
                                                                          ))
                                                                      .toList(),
                                                                  value:
                                                                      selectedValue,
                                                                  onChanged:
                                                                      (value) {
                                                                    setState(
                                                                        () {
                                                                      selectedValue =
                                                                          value
                                                                              as String;
                                                                    });
                                                                  },
                                                                  icon:
                                                                      const Icon(
                                                                    Icons
                                                                        .arrow_forward_ios_outlined,
                                                                  ),
                                                                  iconSize: 14,
                                                                  iconEnabledColor:
                                                                      Color.fromARGB(
                                                                          255,
                                                                          0,
                                                                          0,
                                                                          0),
                                                                  iconDisabledColor:
                                                                      Color.fromRGBO(
                                                                          255,
                                                                          255,
                                                                          255,
                                                                          1),
                                                                  buttonHeight:
                                                                      50,
                                                                  buttonWidth:
                                                                      110,
                                                                  buttonPadding:
                                                                      const EdgeInsets
                                                                              .only(
                                                                          left:
                                                                              14,
                                                                          right:
                                                                              14),
                                                                  buttonDecoration:
                                                                      BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            14),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: Color.fromARGB(
                                                                          66,
                                                                          255,
                                                                          255,
                                                                          255),
                                                                    ),
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            255,
                                                                            255,
                                                                            255),
                                                                  ),
                                                                  buttonElevation:
                                                                      2,
                                                                  itemHeight:
                                                                      40,
                                                                  itemPadding:
                                                                      const EdgeInsets
                                                                              .only(
                                                                          left:
                                                                              14,
                                                                          right:
                                                                              14),
                                                                  dropdownMaxHeight:
                                                                      100,
                                                                  dropdownWidth:
                                                                      100,
                                                                  dropdownPadding:
                                                                      null,
                                                                  dropdownDecoration:
                                                                      BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            14),
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            255,
                                                                            254,
                                                                            254),
                                                                  ),
                                                                  dropdownElevation:
                                                                      8,
                                                                  scrollbarRadius:
                                                                      const Radius
                                                                          .circular(40),
                                                                  scrollbarThickness:
                                                                      3,
                                                                  scrollbarAlwaysShow:
                                                                      true,
                                                                  offset:
                                                                      const Offset(
                                                                          -20,
                                                                          0),
                                                                ),
                                                              ),
                                                            )
                                                          ]))),
                                              Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          right: 10,
                                                          bottom: 10),
                                                      child: Text(
                                                          "lbl_notifications"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRobotoRomanRegular28
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      0.14)))),
                                              Align(
                                                  alignment:
                                                      Alignment.bottomRight,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 60,
                                                          top: 10,
                                                          right: 60,
                                                          bottom: 9),
                                                      child: Text(
                                                          "msg_min_before_class"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .txtRobotoRomanRegular24Indigo800
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      0.12)))),
                                              Align(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: Switch(
                                                  value: firstswitch,
                                                  onChanged: (value6) {
                                                    setState(() {
                                                      firstswitch = value6;
                                                      print(firstswitch);
                                                    });
                                                  },
                                                  activeTrackColor:
                                                      Colors.lightGreenAccent,
                                                  activeColor: Colors.green,
                                                ),
                                              ),
                                              Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 1,
                                                          top: 32,
                                                          right: 10,
                                                          bottom: 32),
                                                      child: Text(
                                                          "msg_i_want_to_get_notification"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .txtRobotoRomanRegular24Indigo800
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      0.12)))),
                                            ])),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 2, top: 25, bottom: 10),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 10),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        right:
                                                                            10),
                                                                child: Text(
                                                                    "lbl_alarm"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtRobotoRomanRegular28
                                                                        .copyWith(
                                                                            letterSpacing:
                                                                                0.14))),
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                child: Padding(
                                                                    padding: getPadding(
                                                                        left: 1,
                                                                        top: 1),
                                                                    child: Text(
                                                                        "msg_i_want_to_set_an"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .center,
                                                                        style: AppStyle
                                                                            .txtRobotoRomanRegular24Indigo800
                                                                            .copyWith(letterSpacing: 0.12))))
                                                          ])),
                                                  Switch(
                                                    value: secondswitch,
                                                    onChanged: (value5) {
                                                      setState(() {
                                                        secondswitch = value5;
                                                        print(secondswitch);
                                                      });
                                                    },
                                                    activeTrackColor:
                                                        Colors.lightGreenAccent,
                                                    activeColor: Colors.green,
                                                  ),
                                                ]))),
                                    Padding(
                                        padding: getPadding(
                                            left: 2, top: 1, right: 10),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              DropdownButtonHideUnderline(
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
                                                          '2 min',
                                                          style: TextStyle(
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    2,
                                                                    2,
                                                                    2),
                                                          ),
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  items: items2
                                                      .map((item) =>
                                                          DropdownMenuItem<
                                                              String>(
                                                            value: item,
                                                            child: Text(
                                                              item,
                                                              style:
                                                                  const TextStyle(
                                                                fontSize: 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        0,
                                                                        0,
                                                                        0),
                                                              ),
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                            ),
                                                          ))
                                                      .toList(),
                                                  value: selectedValues,
                                                  onChanged: (value) {
                                                    setState(() {
                                                      selectedValues =
                                                          value as String;
                                                    });
                                                  },
                                                  icon: const Icon(
                                                    Icons
                                                        .arrow_forward_ios_outlined,
                                                  ),
                                                  iconSize: 14,
                                                  iconEnabledColor:
                                                      Color.fromARGB(
                                                          255, 0, 0, 0),
                                                  iconDisabledColor:
                                                      Color.fromRGBO(
                                                          255, 255, 255, 1),
                                                  buttonHeight: 50,
                                                  buttonWidth: 110,
                                                  buttonPadding:
                                                      const EdgeInsets.only(
                                                          left: 14, right: 14),
                                                  buttonDecoration:
                                                      BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            14),
                                                    border: Border.all(
                                                      color: Color.fromARGB(
                                                          66, 255, 255, 255),
                                                    ),
                                                    color: Color.fromARGB(
                                                        255, 255, 255, 255),
                                                  ),
                                                  buttonElevation: 2,
                                                  itemHeight: 40,
                                                  itemPadding:
                                                      const EdgeInsets.only(
                                                          left: 14, right: 14),
                                                  dropdownMaxHeight: 100,
                                                  dropdownWidth: 100,
                                                  dropdownPadding: null,
                                                  dropdownDecoration:
                                                      BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            14),
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
                                              Padding(
                                                  padding: getPadding(
                                                      left: 7,
                                                      top: 7,
                                                      bottom: 9),
                                                  child: Text(
                                                      "msg_min_before_class".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: AppStyle
                                                          .txtRobotoRomanRegular24Indigo800
                                                          .copyWith(
                                                              letterSpacing:
                                                                  0.12)))
                                            ]))
                                  ]))),
                      Container(
                          height: getVerticalSize(3.00),
                          width: size.width,
                          margin: getMargin(top: 18),
                          decoration:
                              BoxDecoration(color: ColorConstant.black900)),
                      Container(
                          decoration: AppDecoration.fillBluegray101,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                    padding: getPadding(
                                        left: 13, top: 14, bottom: 5),
                                    child: Text("lbl_makeup_classes".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRobotoRomanRegular32
                                            .copyWith(letterSpacing: 0.16))),
                              ])),
                      Container(
                          height: getVerticalSize(3.00),
                          width: size.width,
                          decoration:
                              BoxDecoration(color: ColorConstant.black900)),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 15, top: 20, right: 15),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                        height: getVerticalSize(130.00),
                                        width: getHorizontalSize(361.00),
                                        child: Stack(
                                            alignment: Alignment.topLeft,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  child: Container(
                                                      margin: getMargin(
                                                          top: 10, right: 10),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 0,
                                                                      top: 10,
                                                                      right: 0,
                                                                      bottom:
                                                                          0),
                                                              child:
                                                                  DropdownButtonHideUnderline(
                                                                child:
                                                                    DropdownButton2(
                                                                  isExpanded:
                                                                      true,
                                                                  hint: Row(
                                                                    children: const [
                                                                      Icon(
                                                                        Icons
                                                                            .list,
                                                                        size: 6,
                                                                        color: Color.fromARGB(
                                                                            255,
                                                                            255,
                                                                            255,
                                                                            255),
                                                                      ),
                                                                      SizedBox(
                                                                        width:
                                                                            2,
                                                                      ),
                                                                      Expanded(
                                                                        child:
                                                                            Text(
                                                                          '2 min',
                                                                          style:
                                                                              TextStyle(
                                                                            fontSize:
                                                                                14,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                            color: Color.fromARGB(
                                                                                255,
                                                                                2,
                                                                                2,
                                                                                2),
                                                                          ),
                                                                          overflow:
                                                                              TextOverflow.ellipsis,
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  items: items11
                                                                      .map((item) =>
                                                                          DropdownMenuItem<
                                                                              String>(
                                                                            value:
                                                                                item,
                                                                            child:
                                                                                Text(
                                                                              item,
                                                                              style: const TextStyle(
                                                                                fontSize: 14,
                                                                                fontWeight: FontWeight.bold,
                                                                                color: Color.fromARGB(255, 0, 0, 0),
                                                                              ),
                                                                              overflow: TextOverflow.ellipsis,
                                                                            ),
                                                                          ))
                                                                      .toList(),
                                                                  value:
                                                                      selectedValue11,
                                                                  onChanged:
                                                                      (value) {
                                                                    setState(
                                                                        () {
                                                                      selectedValue11 =
                                                                          value
                                                                              as String;
                                                                    });
                                                                  },
                                                                  icon:
                                                                      const Icon(
                                                                    Icons
                                                                        .arrow_forward_ios_outlined,
                                                                  ),
                                                                  iconSize: 14,
                                                                  iconEnabledColor:
                                                                      Color.fromARGB(
                                                                          255,
                                                                          0,
                                                                          0,
                                                                          0),
                                                                  iconDisabledColor:
                                                                      Color.fromRGBO(
                                                                          255,
                                                                          255,
                                                                          255,
                                                                          1),
                                                                  buttonHeight:
                                                                      50,
                                                                  buttonWidth:
                                                                      110,
                                                                  buttonPadding:
                                                                      const EdgeInsets
                                                                              .only(
                                                                          left:
                                                                              14,
                                                                          right:
                                                                              14),
                                                                  buttonDecoration:
                                                                      BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            14),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: Color.fromARGB(
                                                                          66,
                                                                          255,
                                                                          255,
                                                                          255),
                                                                    ),
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            255,
                                                                            255,
                                                                            255),
                                                                  ),
                                                                  buttonElevation:
                                                                      2,
                                                                  itemHeight:
                                                                      40,
                                                                  itemPadding:
                                                                      const EdgeInsets
                                                                              .only(
                                                                          left:
                                                                              14,
                                                                          right:
                                                                              14),
                                                                  dropdownMaxHeight:
                                                                      100,
                                                                  dropdownWidth:
                                                                      100,
                                                                  dropdownPadding:
                                                                      null,
                                                                  dropdownDecoration:
                                                                      BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            14),
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            255,
                                                                            254,
                                                                            254),
                                                                  ),
                                                                  dropdownElevation:
                                                                      8,
                                                                  scrollbarRadius:
                                                                      const Radius
                                                                          .circular(40),
                                                                  scrollbarThickness:
                                                                      3,
                                                                  scrollbarAlwaysShow:
                                                                      true,
                                                                  offset:
                                                                      const Offset(
                                                                          -20,
                                                                          0),
                                                                ),
                                                              ),
                                                            )
                                                          ]))),
                                              Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          right: 10,
                                                          bottom: 10),
                                                      child: Text(
                                                          "lbl_notifications"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRobotoRomanRegular28
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      0.14)))),
                                              Align(
                                                  alignment:
                                                      Alignment.bottomRight,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 60,
                                                          top: 10,
                                                          right: 60,
                                                          bottom: 9),
                                                      child: Text(
                                                          "msg_min_before_class"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .txtRobotoRomanRegular24Indigo800
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      0.12)))),
                                              Align(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: Switch(
                                                  value: threeswitch,
                                                  onChanged: (value55) {
                                                    setState(() {
                                                      threeswitch = value55;
                                                      print(threeswitch);
                                                    });
                                                  },
                                                  activeTrackColor:
                                                      Colors.lightGreenAccent,
                                                  activeColor: Colors.green,
                                                ),
                                              ),
                                              Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 1,
                                                          top: 32,
                                                          right: 10,
                                                          bottom: 32),
                                                      child: Text(
                                                          "msg_i_want_to_get_notification"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .txtRobotoRomanRegular24Indigo800
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      0.12)))),
                                            ])),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 2, top: 25, bottom: 10),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 10),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        right:
                                                                            10),
                                                                child: Text(
                                                                    "lbl_alarm"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtRobotoRomanRegular28
                                                                        .copyWith(
                                                                            letterSpacing:
                                                                                0.14))),
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                child: Padding(
                                                                    padding: getPadding(
                                                                        left: 1,
                                                                        top: 1),
                                                                    child: Text(
                                                                        "msg_i_want_to_set_an"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .center,
                                                                        style: AppStyle
                                                                            .txtRobotoRomanRegular24Indigo800
                                                                            .copyWith(letterSpacing: 0.12))))
                                                          ])),
                                                  Switch(
                                                    value: fourswitch,
                                                    onChanged: (value22) {
                                                      setState(() {
                                                        fourswitch = value22;
                                                        print(fourswitch);
                                                      });
                                                    },
                                                    activeTrackColor:
                                                        Colors.lightGreenAccent,
                                                    activeColor: Colors.green,
                                                  ),
                                                ]))),
                                    Padding(
                                        padding: getPadding(
                                            left: 2,
                                            top: 1,
                                            right: 10,
                                            bottom: 20),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              DropdownButtonHideUnderline(
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
                                                          '2 min',
                                                          style: TextStyle(
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    2,
                                                                    2,
                                                                    2),
                                                          ),
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  items: items22
                                                      .map((item) =>
                                                          DropdownMenuItem<
                                                              String>(
                                                            value: item,
                                                            child: Text(
                                                              item,
                                                              style:
                                                                  const TextStyle(
                                                                fontSize: 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        0,
                                                                        0,
                                                                        0),
                                                              ),
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                            ),
                                                          ))
                                                      .toList(),
                                                  value: selectedValues22,
                                                  onChanged: (value) {
                                                    setState(() {
                                                      selectedValues22 =
                                                          value as String;
                                                    });
                                                  },
                                                  icon: const Icon(
                                                    Icons
                                                        .arrow_forward_ios_outlined,
                                                  ),
                                                  iconSize: 14,
                                                  iconEnabledColor:
                                                      Color.fromARGB(
                                                          255, 0, 0, 0),
                                                  iconDisabledColor:
                                                      Color.fromRGBO(
                                                          255, 255, 255, 1),
                                                  buttonHeight: 50,
                                                  buttonWidth: 110,
                                                  buttonPadding:
                                                      const EdgeInsets.only(
                                                          left: 14, right: 14),
                                                  buttonDecoration:
                                                      BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            14),
                                                    border: Border.all(
                                                      color: Color.fromARGB(
                                                          66, 255, 255, 255),
                                                    ),
                                                    color: Color.fromARGB(
                                                        255, 255, 255, 255),
                                                  ),
                                                  buttonElevation: 2,
                                                  itemHeight: 40,
                                                  itemPadding:
                                                      const EdgeInsets.only(
                                                          left: 14, right: 14),
                                                  dropdownMaxHeight: 100,
                                                  dropdownWidth: 100,
                                                  dropdownPadding: null,
                                                  dropdownDecoration:
                                                      BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            14),
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
                                              Padding(
                                                  padding: getPadding(
                                                      left: 7,
                                                      top: 7,
                                                      bottom: 9),
                                                  child: Text(
                                                      "msg_min_before_class".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: AppStyle
                                                          .txtRobotoRomanRegular24Indigo800
                                                          .copyWith(
                                                              letterSpacing:
                                                                  0.12)))
                                            ]))
                                  ]))),
                      Container(
                          height: getVerticalSize(3.00),
                          width: size.width,
                          margin: getMargin(top: 0),
                          decoration:
                              BoxDecoration(color: ColorConstant.black900)),
                      Container(
                          decoration: AppDecoration.fillBluegray101,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                    padding: getPadding(
                                        left: 13, top: 14, bottom: 5),
                                    child: Text("Cancel_classes".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRobotoRomanRegular32
                                            .copyWith(letterSpacing: 0.16))),
                              ])),
                      Container(
                          height: getVerticalSize(3.00),
                          width: size.width,
                          decoration:
                              BoxDecoration(color: ColorConstant.black900)),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 15, top: 20, right: 15),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                        height: getVerticalSize(130.00),
                                        width: getHorizontalSize(361.00),
                                        child: Stack(
                                            alignment: Alignment.topLeft,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  child: Container(
                                                      margin: getMargin(
                                                          top: 10, right: 10),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 0,
                                                                      top: 10,
                                                                      right: 0,
                                                                      bottom:
                                                                          0),
                                                              child:
                                                                  DropdownButtonHideUnderline(
                                                                child:
                                                                    DropdownButton2(
                                                                  isExpanded:
                                                                      true,
                                                                  hint: Row(
                                                                    children: const [
                                                                      Icon(
                                                                        Icons
                                                                            .list,
                                                                        size: 6,
                                                                        color: Color.fromARGB(
                                                                            255,
                                                                            255,
                                                                            255,
                                                                            255),
                                                                      ),
                                                                      SizedBox(
                                                                        width:
                                                                            2,
                                                                      ),
                                                                      Expanded(
                                                                        child:
                                                                            Text(
                                                                          '2 min',
                                                                          style:
                                                                              TextStyle(
                                                                            fontSize:
                                                                                14,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                            color: Color.fromARGB(
                                                                                255,
                                                                                2,
                                                                                2,
                                                                                2),
                                                                          ),
                                                                          overflow:
                                                                              TextOverflow.ellipsis,
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  items: items111
                                                                      .map((item) => DropdownMenuItem<String>(
                                                                            value:
                                                                                item,
                                                                            child:
                                                                                Text(
                                                                              item,
                                                                              style: const TextStyle(
                                                                                fontSize: 14,
                                                                                fontWeight: FontWeight.bold,
                                                                                color: Color.fromARGB(255, 0, 0, 0),
                                                                              ),
                                                                              overflow: TextOverflow.ellipsis,
                                                                            ),
                                                                          ))
                                                                      .toList(),
                                                                  value:
                                                                      selectedValue111,
                                                                  onChanged:
                                                                      (value) {
                                                                    setState(
                                                                        () {
                                                                      selectedValue111 =
                                                                          value
                                                                              as String;
                                                                    });
                                                                  },
                                                                  icon:
                                                                      const Icon(
                                                                    Icons
                                                                        .arrow_forward_ios_outlined,
                                                                  ),
                                                                  iconSize: 14,
                                                                  iconEnabledColor:
                                                                      Color.fromARGB(
                                                                          255,
                                                                          0,
                                                                          0,
                                                                          0),
                                                                  iconDisabledColor:
                                                                      Color.fromRGBO(
                                                                          255,
                                                                          255,
                                                                          255,
                                                                          1),
                                                                  buttonHeight:
                                                                      50,
                                                                  buttonWidth:
                                                                      110,
                                                                  buttonPadding:
                                                                      const EdgeInsets
                                                                              .only(
                                                                          left:
                                                                              14,
                                                                          right:
                                                                              14),
                                                                  buttonDecoration:
                                                                      BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            14),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: Color.fromARGB(
                                                                          66,
                                                                          255,
                                                                          255,
                                                                          255),
                                                                    ),
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            255,
                                                                            255,
                                                                            255),
                                                                  ),
                                                                  buttonElevation:
                                                                      2,
                                                                  itemHeight:
                                                                      40,
                                                                  itemPadding:
                                                                      const EdgeInsets
                                                                              .only(
                                                                          left:
                                                                              14,
                                                                          right:
                                                                              14),
                                                                  dropdownMaxHeight:
                                                                      100,
                                                                  dropdownWidth:
                                                                      100,
                                                                  dropdownPadding:
                                                                      null,
                                                                  dropdownDecoration:
                                                                      BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            14),
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            255,
                                                                            254,
                                                                            254),
                                                                  ),
                                                                  dropdownElevation:
                                                                      8,
                                                                  scrollbarRadius:
                                                                      const Radius
                                                                          .circular(40),
                                                                  scrollbarThickness:
                                                                      3,
                                                                  scrollbarAlwaysShow:
                                                                      true,
                                                                  offset:
                                                                      const Offset(
                                                                          -20,
                                                                          0),
                                                                ),
                                                              ),
                                                            )
                                                          ]))),
                                              Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          right: 10,
                                                          bottom: 10),
                                                      child: Text(
                                                          "lbl_notifications"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRobotoRomanRegular28
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      0.14)))),
                                              Align(
                                                  alignment:
                                                      Alignment.bottomRight,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 60,
                                                          top: 10,
                                                          right: 60,
                                                          bottom: 9),
                                                      child: Text(
                                                          "msg_min_before_class"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .txtRobotoRomanRegular24Indigo800
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      0.12)))),
                                              Align(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: Switch(
                                                  value: fiveswitch,
                                                  onChanged: (value333) {
                                                    setState(() {
                                                      fiveswitch = value333;
                                                      print(fiveswitch);
                                                    });
                                                  },
                                                  activeTrackColor:
                                                      Colors.lightGreenAccent,
                                                  activeColor: Colors.green,
                                                ),
                                              ),
                                              Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 1,
                                                          top: 32,
                                                          right: 10,
                                                          bottom: 32),
                                                      child: Text(
                                                          "msg_i_want_to_get_notification"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .txtRobotoRomanRegular24Indigo800
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      0.12)))),
                                            ])),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 2, top: 25, bottom: 10),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 10),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        right:
                                                                            10),
                                                                child: Text(
                                                                    "lbl_alarm"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtRobotoRomanRegular28
                                                                        .copyWith(
                                                                            letterSpacing:
                                                                                0.14))),
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                child: Padding(
                                                                    padding: getPadding(
                                                                        left: 1,
                                                                        top: 1),
                                                                    child: Text(
                                                                        "msg_i_want_to_set_an"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .center,
                                                                        style: AppStyle
                                                                            .txtRobotoRomanRegular24Indigo800
                                                                            .copyWith(letterSpacing: 0.12))))
                                                          ])),
                                                  Switch(
                                                    value: sixswitch,
                                                    onChanged: (value) {
                                                      setState(() {
                                                        sixswitch = value;
                                                        print(sixswitch);
                                                      });
                                                    },
                                                    activeTrackColor:
                                                        Colors.lightGreenAccent,
                                                    activeColor: Colors.green,
                                                  ),
                                                ]))),
                                    Padding(
                                        padding: getPadding(
                                            left: 2,
                                            top: 1,
                                            right: 10,
                                            bottom: 20),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              DropdownButtonHideUnderline(
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
                                                          '2 min',
                                                          style: TextStyle(
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    2,
                                                                    2,
                                                                    2),
                                                          ),
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  items: items222
                                                      .map((item) =>
                                                          DropdownMenuItem<
                                                              String>(
                                                            value: item,
                                                            child: Text(
                                                              item,
                                                              style:
                                                                  const TextStyle(
                                                                fontSize: 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        0,
                                                                        0,
                                                                        0),
                                                              ),
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                            ),
                                                          ))
                                                      .toList(),
                                                  value: selectedValues222,
                                                  onChanged: (value) {
                                                    setState(() {
                                                      selectedValues222 =
                                                          value as String;
                                                    });
                                                  },
                                                  icon: const Icon(
                                                    Icons
                                                        .arrow_forward_ios_outlined,
                                                  ),
                                                  iconSize: 14,
                                                  iconEnabledColor:
                                                      Color.fromARGB(
                                                          255, 0, 0, 0),
                                                  iconDisabledColor:
                                                      Color.fromRGBO(
                                                          255, 255, 255, 1),
                                                  buttonHeight: 50,
                                                  buttonWidth: 110,
                                                  buttonPadding:
                                                      const EdgeInsets.only(
                                                          left: 14, right: 14),
                                                  buttonDecoration:
                                                      BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            14),
                                                    border: Border.all(
                                                      color: Color.fromARGB(
                                                          66, 255, 255, 255),
                                                    ),
                                                    color: Color.fromARGB(
                                                        255, 255, 255, 255),
                                                  ),
                                                  buttonElevation: 2,
                                                  itemHeight: 40,
                                                  itemPadding:
                                                      const EdgeInsets.only(
                                                          left: 14, right: 14),
                                                  dropdownMaxHeight: 100,
                                                  dropdownWidth: 100,
                                                  dropdownPadding: null,
                                                  dropdownDecoration:
                                                      BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            14),
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
                                              Padding(
                                                  padding: getPadding(
                                                      left: 7,
                                                      top: 7,
                                                      bottom: 9),
                                                  child: Text(
                                                      "msg_min_before_class".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: AppStyle
                                                          .txtRobotoRomanRegular24Indigo800
                                                          .copyWith(
                                                              letterSpacing:
                                                                  0.12)))
                                            ]))
                                  ]))),
                      Container(
                          height: getVerticalSize(3.00),
                          width: size.width,
                          margin: getMargin(top: 0),
                          decoration:
                              BoxDecoration(color: ColorConstant.black900)),
                      Padding(
                          padding: getPadding(bottom: 4),
                          child: CommonImageView(
                              imagePath: ImageConstant.imgImage12,
                              height: getVerticalSize(276.00),
                              width: getHorizontalSize(393.00)))
                    ])))));
  }

  onTapImgCamera() async {
    await PermissionManager.askForPermission(Permission.camera);
    await PermissionManager.askForPermission(Permission.storage);
    List<String?>? imageList = [];
//TODO: Permission - use imageList for using selected images
    await FileManager().showModelSheetForImage(getImages: (value) async {
      imageList = value;
    });
  }

  onTapImgCameraOne() async {
    await PermissionManager.askForPermission(Permission.camera);
    await PermissionManager.askForPermission(Permission.storage);
    List<String?>? imageList = [];
//TODO: Permission - use imageList for using selected images
    await FileManager().showModelSheetForImage(getImages: (value) async {
      imageList = value;
    });
  }

  onTapEllipseThirty7() {
    Get.toNamed(AppRoutes.homeStudentScreen);
  }
}
