import 'dart:io';

import 'controller/contact_3_student_controller.dart';
import 'package:flutter/material.dart';
import 'package:sami_s_application1/core/app_export.dart';
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

class LabeledCheckbox extends StatelessWidget {
  const LabeledCheckbox({
    required this.label,
    required this.padding,
    required this.value,
    required this.onChanged,
  });

  final String label;
  final EdgeInsets padding;
  final bool value;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onChanged(!value);
      },
      child: Padding(
        padding: getPadding(left: 6, top: 0, right: 0),
        child: Container(
          child: (Checkbox(
            value: value,
            onChanged: (bool? newValue) {
              onChanged(newValue!);
            },
          )),
        ),
      ),
    );
  }
}

bool? value1;

class MyStatefulWidget extends StatefulWidget {
  bool get() {
    return _MyStatefulWidgetState().val;
  }

  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  bool _isSelected = false;

  bool val = false;
  @override
  Widget build(BuildContext context) {
    return LabeledCheckbox(
      label: '',
      padding: const EdgeInsets.symmetric(horizontal: 100.0),
      value: _isSelected,
      onChanged: (bool newValue) {
        setState(() {
          val:
          // ignore: unnecessary_statements
          _isSelected;
          _isSelected = newValue;
        });
      },
    );
  }
}

class Contact3StudentScreen extends GetWidget<Contact3StudentController> {
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
              title: Text("Contact Teacher"),
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
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 11, top: 28, right: 11),
                              child: Text("msg_choose_a_time_slot".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtCookieRegular48
                                      .copyWith(letterSpacing: 0.24)))),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              margin: getMargin(left: 6, top: 28, right: 2),
                              decoration: AppDecoration.fillDeeporangeA400,
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                        padding: getPadding(
                                            left: 14, top: 15, bottom: 6),
                                        child: Text("lbl_monday".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtCookieRegular32
                                                .copyWith(
                                                    letterSpacing: 0.16))),
                                    Padding(
                                        padding: getPadding(
                                            left: 26, top: 24, bottom: 14),
                                        child: Text("msg_11_50_12_20_sep".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRobotoRomanMedium16
                                                .copyWith(letterSpacing: 0.02)))
                                  ]))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 11, top: 18, right: 11),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 1),
                                        child: Text("lbl_monday2".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.center,
                                            style: AppStyle.txtCookieRegular32
                                                .copyWith(
                                                    letterSpacing: 0.16))),
                                    Padding(
                                        padding: getPadding(top: 6, bottom: 11),
                                        child: Text("msg_12_20_12_50_sep".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRobotoRomanMedium16
                                                .copyWith(
                                                    letterSpacing: 0.02))),
                                    Padding(
                                      padding: getPadding(
                                        bottom: 7,
                                      ),
                                      child: MyStatefulWidget(),
                                    )
                                  ]))),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              height: getVerticalSize(57.00),
                              width: getHorizontalSize(385.00),
                              margin: getMargin(left: 6, top: 9, right: 2),
                              child: Stack(
                                  alignment: Alignment.centerLeft,
                                  children: [
                                    Align(
                                        alignment: Alignment.topRight,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 17,
                                                top: 10,
                                                right: 17,
                                                bottom: 10),
                                            child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(
                                                            14.50)),
                                                child: CommonImageView(
                                                    imagePath: ImageConstant
                                                        .imgEllipse31,
                                                    height: getSize(29.00),
                                                    width: getSize(29.00),
                                                    fit: BoxFit.cover)))),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                            decoration:
                                                AppDecoration.fillIndigo100,
                                            child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 8,
                                                          top: 13,
                                                          bottom: 7),
                                                      child: Text(
                                                          "lbl_monday".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtCookieRegular32
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      0.16))),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 32,
                                                          top: 19,
                                                          bottom: 18,
                                                          right: 20),
                                                      child: Text(
                                                          "msg_12_50_01_20_sep"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRobotoRomanMedium16
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      0.02))),
                                                  Padding(
                                                    padding:
                                                        getPadding(bottom: 10),
                                                    child: MyStatefulWidget(),
                                                  ),
                                                ])))
                                  ]))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 11, top: 14, right: 11),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text("lbl_tuesday".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtCookieRegular32
                                            .copyWith(letterSpacing: 0.16)),
                                    Padding(
                                        padding: getPadding(top: 5, bottom: 11),
                                        child: Text("msg_11_50_12_20_sep".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRobotoRomanMedium16
                                                .copyWith(
                                                    letterSpacing: 0.02))),
                                    Padding(
                                      padding: getPadding(top: 1, bottom: 6),
                                      child: MyStatefulWidget(),
                                    )
                                  ]))),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              margin: getMargin(left: 6, top: 6, right: 2),
                              decoration: AppDecoration.fillDeeporangeA400,
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                        padding: getPadding(
                                            left: 8, top: 14, bottom: 6),
                                        child: Text("lbl_tuesday2".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtCookieRegular32
                                                .copyWith(
                                                    letterSpacing: 0.16))),
                                    Padding(
                                        padding: getPadding(
                                            left: 35, top: 17, bottom: 20),
                                        child: Text("msg_12_20_12_50_sep".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRobotoRomanMedium16
                                                .copyWith(letterSpacing: 0.02)))
                                  ]))),
                      CustomButton(
                          width: 125,
                          text: "lbl_confirm".tr,
                          margin: getMargin(left: 11, top: 11, right: 11),
                          variant: ButtonVariant.FillBlue50,
                          shape: ButtonShape.CircleBorder27,
                          fontStyle: ButtonFontStyle.RobotoRomanMedium24,
                          onTap: onTapConfirm,
                          alignment: Alignment.center),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(right: 3),
                              child: CommonImageView(
                                  imagePath: ImageConstant.imgRectangle191,
                                  height: getVerticalSize(274.00),
                                  width: getHorizontalSize(390.00))))
                    ])))));
  }

  onTapConfirm() {
    Get.toNamed(AppRoutes.homeStudentScreen);
  }

  onTapEllipseThirty2() {
    Get.toNamed(AppRoutes.contact2StudentScreen);
  }
}
