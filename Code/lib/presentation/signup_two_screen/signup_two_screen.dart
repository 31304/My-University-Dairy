import 'dart:io';

import 'package:sami_s_application1/presentation/contact_3_student_screen/contact_3_student_screen.dart';

import 'controller/signup_two_controller.dart';
import 'package:flutter/material.dart';
import 'package:sami_s_application1/core/app_export.dart';
import 'package:sami_s_application1/widgets/custom_button.dart';

final _value = TextEditingController();
final _value2 = TextEditingController();

class SignupTwoScreen extends StatefulWidget {
  @override
  _SignupTwoScreen createState() => _SignupTwoScreen();
}

bool b = false;
bool t = false;

class _SignupTwoScreen extends State<SignupTwoScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: AppBar(
                title: Text("Sudent Dairy"),
                backgroundColor: Color.fromRGBO(59, 72, 128, 1),
                actions: [
                  IconButton(
                      icon: Icon(Icons.help_outline_outlined,
                          color: Color.fromARGB(255, 255, 255, 255)),
                      onPressed: () {}),
                ]),
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              height: getVerticalSize(300.00),
                              width: size.width,
                              child: Stack(
                                  alignment: Alignment.bottomRight,
                                  children: [
                                    Align(
                                        alignment: Alignment.topLeft,
                                        child: Container(
                                            margin: getMargin(bottom: 10),
                                            decoration: AppDecoration
                                                .fillIndigo800
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .customBorderBL40),
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
                                                              top: 61,
                                                              right: 10,
                                                              bottom: 94),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Padding(
                                                                    padding:
                                                                        getPadding(
                                                                            top:
                                                                                6),
                                                                    child: ClipRRect(
                                                                        borderRadius:
                                                                            BorderRadius.circular(getHorizontalSize(
                                                                                50.00)),
                                                                        child: CommonImageView(
                                                                            imagePath:
                                                                                ImageConstant.imgEllipse35100x82,
                                                                            height: getVerticalSize(100.00),
                                                                            width: getHorizontalSize(82.00),
                                                                            fit: BoxFit.cover))),
                                                                Container(
                                                                    width: getHorizontalSize(
                                                                        178.00),
                                                                    margin: getMargin(
                                                                        left:
                                                                            103,
                                                                        bottom:
                                                                            35),
                                                                    child: Text(
                                                                        "msg_my_university_diary"
                                                                            .tr,
                                                                        maxLines:
                                                                            null,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .center,
                                                                        style: AppStyle
                                                                            .txtPraiseRegular35
                                                                            .copyWith(letterSpacing: 0.18)))
                                                              ])))
                                                ]))),
                                    Align(
                                        alignment: Alignment.bottomRight,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 10, top: 10),
                                            child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(
                                                            73.50)),
                                                child: CommonImageView(
                                                    imagePath: ImageConstant
                                                        .imgEllipse33121x103,
                                                    height:
                                                        getVerticalSize(121.00),
                                                    width: getHorizontalSize(
                                                        103.00),
                                                    fit: BoxFit.cover))))
                                  ]))),
                      SizedBox(height: 30),
                      Container(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 22.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              TextField(
                                obscureText: true,
                                enableSuggestions: true,
                                controller: _value,
                                autocorrect: true,
                                decoration: InputDecoration(
                                  errorText:
                                      t ? "This filled is not Empty" : null,
                                  icon: Icon(Icons.password_outlined),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.blueAccent,
                                    ),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  hintText: "",
                                  labelText: 'Password',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      Container(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 22.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              TextField(
                                obscureText: true,
                                controller: _value2,
                                enableSuggestions: true,
                                autocorrect: true,
                                decoration: InputDecoration(
                                  errorText:
                                      b ? "This filled is not Empty" : null,
                                  icon: Icon(Icons.password),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.blueAccent,
                                    ),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  hintText: "",
                                  labelText: 'Confirm Password',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      CustomButton(
                        width: 122,
                        text: "lbl_next".tr,
                        margin:
                            getMargin(left: 57, top: 26, right: 57, bottom: 5),
                        variant: ButtonVariant.FillBlue50,
                        shape: ButtonShape.CircleBorder27,
                        fontStyle: ButtonFontStyle.RobotoRomanMedium24,
                        onTap: onTapSignup,
                      ),
                    ])))));
  }

  onTapImgEllipseThirty() {
    Get.toNamed(AppRoutes.signupOneScreen);
  }

  onTapSignup() {
    if (_value.text == "") {
      setState(() {
        t = true;
        if (_value2.text != "") {
          b = false;
        }
      });
    }
    if (_value2.text == "") {
      setState(() {
        b = true;
        if (_value.text != "") {
          t = false;
        }
      });
    }
    if (_value.text != "" && _value2.text != "") {
      setState(() {
        t = false;
        b = false;
      });
    }
    if (_value.text != _value2.text &&
        _value.text != "" &&
        _value2.text != "") {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text('Confirm password is not correct!'),
          duration: const Duration(milliseconds: 1500),
          backgroundColor: Colors.blue[200],
        ),
      );
    }
    if (_value.text != "" &&
        _value2.text != "" &&
        _value.text == _value2.text) {
      Get.toNamed(AppRoutes.signupThreeScreen);
    }
  }
}
