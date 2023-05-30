import 'dart:io';

import 'controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:sami_s_application1/core/app_export.dart';
import 'package:sami_s_application1/widgets/custom_button.dart';

final _value = TextEditingController();
final _value2 = TextEditingController();
bool a = false;
bool b = false;

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreen createState() => _LoginScreen();
}

class _LoginScreen extends State<LoginScreen> {
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
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              height: getVerticalSize(339.00),
                              width: size.width,
                              child: Stack(
                                  alignment: Alignment.bottomLeft,
                                  children: [
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                            margin: getMargin(bottom: 9),
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
                                                          Alignment.centerRight,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 10,
                                                              top: 103,
                                                              bottom: 113),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .end,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Container(
                                                                    width: getHorizontalSize(
                                                                        178.00),
                                                                    margin: getMargin(
                                                                        top: 23,
                                                                        bottom:
                                                                            8),
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
                                                                            .copyWith(letterSpacing: 0.18))),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            106),
                                                                    child: ClipRRect(
                                                                        borderRadius:
                                                                            BorderRadius.circular(getHorizontalSize(
                                                                                51.31)),
                                                                        child: CommonImageView(
                                                                            imagePath:
                                                                                ImageConstant.imgEllipse34,
                                                                            height: getVerticalSize(102.00),
                                                                            width: getHorizontalSize(76.00),
                                                                            fit: BoxFit.cover)))
                                                              ])))
                                                ]))),
                                    Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Padding(
                                            padding: getPadding(
                                                top: 10, right: 10),
                                            child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(
                                                            50.49)),
                                                child: CommonImageView(
                                                    imagePath: ImageConstant
                                                        .imgEllipse36,
                                                    height:
                                                        getVerticalSize(100.00),
                                                    width: getHorizontalSize(
                                                        68.00),
                                                    fit: BoxFit.cover))))
                                  ]))),
                      SizedBox(
                        height: 40,
                      ),
                      Container(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 22.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              TextField(
                                controller: _value,
                                decoration: InputDecoration(
                                  errorText:
                                      a ? "This filed is required" : null,
                                  icon: Icon(Icons.email_outlined),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.blueAccent,
                                    ),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  hintText: "abcd@gmail.com",
                                  labelText: 'Email',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 22.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              TextField(
                                obscureText: true,
                                controller: _value2,
                                decoration: InputDecoration(
                                  errorText:
                                      b ? "This filed is required" : null,
                                  icon: Icon(Icons.password),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.blueAccent,
                                    ),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  hintText: "Password",
                                  labelText: 'Password',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 45, top: 9, right: 45),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 1),
                                        child: Text("lbl_forget_password".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtAryaRegular13Deeppurple900
                                                .copyWith(
                                                    letterSpacing: 0.07,
                                                    decoration: TextDecoration
                                                        .underline))),
                                    Padding(
                                        padding: getPadding(
                                            left: 3, top: 1, bottom: 1),
                                        child: Text("lbl".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtAryaRegular13
                                                .copyWith(
                                                    letterSpacing: 0.07))),
                                    Padding(
                                        padding: getPadding(left: 1, bottom: 1),
                                        child: Text("lbl_create_account".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtAryaRegular13Indigo700
                                                .copyWith(
                                                    letterSpacing: 0.07,
                                                    decoration: TextDecoration
                                                        .underline)))
                                  ]))),
                      SizedBox(
                        height: 10,
                      ),
                      CustomButton(
                          width: 98,
                          text: "lbl_login2".tr,
                          margin: getMargin(
                              left: 139, top: 16, right: 139, bottom: 5),
                          variant: ButtonVariant.FillBlue50,
                          shape: ButtonShape.CircleBorder27,
                          fontStyle: ButtonFontStyle.RobotoRomanMedium24,
                          onTap: onTapLogin,
                          alignment: Alignment.centerRight)
                    ])))));
  }

  onTapLogin() {
    setState(() {
      if (_value.text == "" || _value2.text == "") {
        a = true;
        b = true;
      }
      if (_value.text != "") {
        a = false;
      }
      if (_value2.text != "") {
        b = false;
      }
    });

    if (_value.text == "Huzaifa" && _value2.text == "12345678") {
      Get.toNamed(AppRoutes.homeStudentScreen);
    } else if (_value.text == "Irum Inayat" && _value2.text == "87654321") {
      Get.toNamed(AppRoutes.homeTeacherScreen);
    } else if (_value.text == "Amir Rehman" && _value2.text == "1234567890") {
      Get.toNamed(AppRoutes.homeAdminScreen);
    } else {
      if (_value.text != "" || _value2.text != "") {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text('Your Account not found!'),
            duration: const Duration(milliseconds: 1500),
            backgroundColor: Colors.blue[200],
          ),
        );
      }
    }
  }
}
