import 'dart:io';

import 'package:dropdown_button2/dropdown_button2.dart';

import 'controller/requests_teacher_controller.dart';
import 'package:flutter/material.dart';
import 'package:sami_s_application1/core/app_export.dart';
import 'package:sami_s_application1/widgets/app_bar/appbar_circleimage.dart';
import 'package:sami_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:sami_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:sami_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:sami_s_application1/widgets/custom_button.dart';

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

class RequestsTeacherScreen extends StatefulWidget {
  _RequestsTeacherScreen createState() => _RequestsTeacherScreen();
}

class _RequestsTeacherScreen extends State<RequestsTeacherScreen> {
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
              title: Text("Meeting Requests"),
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
                          color: Color.fromARGB(66, 167, 166, 166),
                          padding:
                              getPadding(left: 0, top: 0, right: 0, bottom: 20),
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
                          margin: getMargin(top: 21),
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                    alignment: Alignment.topCenter,
                                    child: Container(
                                        height: getVerticalSize(82.00),
                                        width: getHorizontalSize(392.00),
                                        margin: getMargin(right: 1, bottom: 10),
                                        decoration: AppDecoration.fillBlue50,
                                        child: Stack(
                                            alignment: Alignment.bottomLeft,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  child: Container(
                                                      margin: getMargin(
                                                          left: 130,
                                                          top: 10,
                                                          right: 130,
                                                          bottom: 7),
                                                      decoration: AppDecoration
                                                          .fillBlue50
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder17),
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
                                                                        left: 7,
                                                                        top: 8,
                                                                        right:
                                                                            7,
                                                                        bottom:
                                                                            9),
                                                                child: Text(
                                                                    "lbl_decline"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtRobotoRomanMedium15
                                                                        .copyWith(
                                                                            letterSpacing:
                                                                                0.02)))
                                                          ]))),
                                              Align(
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  child: Container(
                                                      margin: getMargin(
                                                          left: 52,
                                                          top: 10,
                                                          right: 52,
                                                          bottom: 6),
                                                      decoration: AppDecoration
                                                          .fillBlue50
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder17),
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
                                                                        left: 8,
                                                                        top: 10,
                                                                        right:
                                                                            8,
                                                                        bottom:
                                                                            7),
                                                                child: Text(
                                                                    "lbl_accept"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtRobotoRomanMedium15
                                                                        .copyWith(
                                                                            letterSpacing:
                                                                                0.02)))
                                                          ]))),
                                              Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 14,
                                                          top: 4,
                                                          right: 14,
                                                          bottom: 10),
                                                      child: Text(
                                                          "msg_huzaifa_ahmed"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
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
                                            left: 129,
                                            top: 11,
                                            right: 129,
                                            bottom: 11),
                                        decoration: AppDecoration.fillBlue50
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .circleBorder28),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                  padding: getPadding(
                                                      left: 40,
                                                      top: 14,
                                                      right: 40,
                                                      bottom: 10),
                                                  child: Text("lbl_daily".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRomanMedium24
                                                          .copyWith(
                                                              letterSpacing:
                                                                  0.04)))
                                            ]))),
                                Align(
                                    alignment: Alignment.topCenter,
                                    child: Container(
                                        margin: getMargin(
                                            top: 82, right: 1, bottom: 82),
                                        decoration: AppDecoration.fillIndigo100,
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 10,
                                                          top: 3,
                                                          right: 10),
                                                      child: Text(
                                                          "msg_zain_abbas_21i_1109"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtCookieRegular32
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      0.16)))),
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 52,
                                                          top: 2,
                                                          right: 52,
                                                          bottom: 4),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          children: [
                                                            CustomButton(
                                                                width: 64,
                                                                text:
                                                                    "lbl_accept"
                                                                        .tr,
                                                                variant:
                                                                    ButtonVariant
                                                                        .FillBlue50,
                                                                shape: ButtonShape
                                                                    .CircleBorder18,
                                                                padding:
                                                                    ButtonPadding
                                                                        .PaddingAll7,
                                                                fontStyle:
                                                                    ButtonFontStyle
                                                                        .RobotoRomanMedium15),
                                                            CustomButton(
                                                                width: 64,
                                                                text:
                                                                    "lbl_decline"
                                                                        .tr,
                                                                margin:
                                                                    getMargin(
                                                                        left:
                                                                            14),
                                                                variant:
                                                                    ButtonVariant
                                                                        .FillBlue50,
                                                                shape: ButtonShape
                                                                    .CircleBorder18,
                                                                padding:
                                                                    ButtonPadding
                                                                        .PaddingAll7,
                                                                fontStyle:
                                                                    ButtonFontStyle
                                                                        .RobotoRomanMedium15)
                                                          ])))
                                            ]))),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                        height: getVerticalSize(82.00),
                                        width: size.width,
                                        margin:
                                            getMargin(top: 164, bottom: 164),
                                        decoration: AppDecoration.fillBlue50,
                                        child: Stack(
                                            alignment: Alignment.bottomLeft,
                                            children: [
                                              Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 10,
                                                          top: 1,
                                                          right: 10,
                                                          bottom: 10),
                                                      child: Text(
                                                          "msg_bilal_akhtar_21i_1149"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtCookieRegular32
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      0.16)))),
                                              CustomButton(
                                                  width: 64,
                                                  text: "lbl_accept".tr,
                                                  margin: getMargin(
                                                      left: 52,
                                                      top: 10,
                                                      right: 52,
                                                      bottom: 7),
                                                  variant:
                                                      ButtonVariant.FillBlue50,
                                                  shape: ButtonShape
                                                      .CircleBorder18,
                                                  padding:
                                                      ButtonPadding.PaddingAll7,
                                                  fontStyle: ButtonFontStyle
                                                      .RobotoRomanMedium15,
                                                  alignment:
                                                      Alignment.bottomLeft),
                                              CustomButton(
                                                  width: 64,
                                                  text: "lbl_decline".tr,
                                                  margin: getMargin(
                                                      left: 130,
                                                      top: 10,
                                                      right: 130,
                                                      bottom: 9),
                                                  variant:
                                                      ButtonVariant.FillBlue50,
                                                  shape: ButtonShape
                                                      .CircleBorder18,
                                                  padding:
                                                      ButtonPadding.PaddingAll7,
                                                  fontStyle: ButtonFontStyle
                                                      .RobotoRomanMedium15,
                                                  alignment:
                                                      Alignment.bottomLeft)
                                            ]))),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                        margin: getMargin(
                                            top: 82, right: 1, bottom: 82),
                                        decoration: AppDecoration.fillIndigo100,
                                        child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              CustomButton(
                                                  width: 64,
                                                  text: "lbl_accept".tr,
                                                  margin: getMargin(
                                                      left: 52,
                                                      top: 37,
                                                      bottom: 9),
                                                  variant:
                                                      ButtonVariant.FillBlue50,
                                                  shape: ButtonShape
                                                      .CircleBorder18,
                                                  padding:
                                                      ButtonPadding.PaddingAll7,
                                                  fontStyle: ButtonFontStyle
                                                      .RobotoRomanMedium15),
                                              CustomButton(
                                                  width: 64,
                                                  text: "lbl_decline".tr,
                                                  margin: getMargin(
                                                      left: 14,
                                                      top: 37,
                                                      right: 198,
                                                      bottom: 9),
                                                  variant:
                                                      ButtonVariant.FillBlue50,
                                                  shape: ButtonShape
                                                      .CircleBorder18,
                                                  padding:
                                                      ButtonPadding.PaddingAll7,
                                                  fontStyle: ButtonFontStyle
                                                      .RobotoRomanMedium15)
                                            ]))),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                        margin: getMargin(top: 10, right: 1),
                                        decoration: AppDecoration.fillBlue50,
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 10,
                                                          top: 5,
                                                          right: 10),
                                                      child: Text(
                                                          "msg_shahid_afreedy_21i_1345"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtCookieRegular32
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      0.16)))),
                                              Align(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 25,
                                                          top: 1,
                                                          right: 8,
                                                          bottom: 1),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .end,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .end,
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        bottom:
                                                                            2,
                                                                        right:
                                                                            25),
                                                                child: Row(
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .center,
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    children: [
                                                                      CustomButton(
                                                                          width:
                                                                              64,
                                                                          text: "lbl_accept"
                                                                              .tr,
                                                                          variant: ButtonVariant
                                                                              .FillBlue50,
                                                                          shape: ButtonShape
                                                                              .CircleBorder18,
                                                                          padding: ButtonPadding
                                                                              .PaddingAll7,
                                                                          fontStyle:
                                                                              ButtonFontStyle.RobotoRomanMedium15),
                                                                      CustomButton(
                                                                          width:
                                                                              64,
                                                                          text: "lbl_decline"
                                                                              .tr,
                                                                          margin: getMargin(
                                                                              left:
                                                                                  14),
                                                                          variant: ButtonVariant
                                                                              .FillBlue50,
                                                                          shape: ButtonShape
                                                                              .CircleBorder18,
                                                                          padding: ButtonPadding
                                                                              .PaddingAll7,
                                                                          fontStyle:
                                                                              ButtonFontStyle.RobotoRomanMedium15)
                                                                    ])),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            51,
                                                                        top:
                                                                            19),
                                                                child: Text(
                                                                    "msg_23_50_sep_21_2022"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtRobotoRomanMedium16
                                                                        .copyWith(
                                                                            letterSpacing:
                                                                                0.02)))
                                                          ])))
                                            ]))),
                                Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Padding(
                                        padding: getPadding(
                                            left: 10,
                                            top: 129,
                                            right: 10,
                                            bottom: 129),
                                        child: Text(
                                            "msg_shoib_malik_21i_1145".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtCookieRegular32
                                                .copyWith(
                                                    letterSpacing: 0.16)))),
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
                                            style: AppStyle
                                                .txtRobotoRomanMedium16
                                                .copyWith(
                                                    letterSpacing: 0.02)))),
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
                                            style: AppStyle
                                                .txtRobotoRomanMedium16
                                                .copyWith(
                                                    letterSpacing: 0.02)))),
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
                                            style: AppStyle
                                                .txtRobotoRomanMedium16
                                                .copyWith(
                                                    letterSpacing: 0.02)))),
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
                                            style: AppStyle
                                                .txtRobotoRomanMedium16
                                                .copyWith(
                                                    letterSpacing: 0.02))))
                              ])),
                      Container(
                          height: getVerticalSize(287.00),
                          width: size.width,
                          margin: getMargin(top: 9, bottom: 1),
                          child:
                              Stack(alignment: Alignment.topCenter, children: [
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                    padding: getPadding(top: 10),
                                    child: CommonImageView(
                                        imagePath: ImageConstant.imgImage15,
                                        height: getVerticalSize(253.00),
                                        width: getHorizontalSize(393.00)))),
                          ]))
                    ])))));
  }

  onTapEllipseThirty11() {
    Get.toNamed(AppRoutes.homeTeacherScreen);
  }
}
