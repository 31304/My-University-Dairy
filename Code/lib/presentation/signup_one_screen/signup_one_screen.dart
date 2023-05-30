import 'dart:io';

import 'controller/signup_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:sami_s_application1/core/app_export.dart';
import 'package:sami_s_application1/widgets/custom_button.dart';

final _value = TextEditingController();
final _value2 = TextEditingController();
final _value3 = TextEditingController();
bool a = false;
bool b = false;
bool c = false;
bool v = false;

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
        padding: padding,
        child: Row(
          children: <Widget>[
            Expanded(child: Text(label)),
            Checkbox(
              value: value,
              onChanged: (bool? newValue) {
                onChanged(newValue!);
              },
            ),
            Text(
              "Accept term and Condition",
              style: TextStyle(fontSize: 8.0),
            ),
          ],
        ),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return LabeledCheckbox(
      label: '',
      padding: const EdgeInsets.symmetric(horizontal: 100.0),
      value: _isSelected,
      onChanged: (bool newValue) {
        setState(() {
          _isSelected = newValue;
          v = _isSelected;
        });
      },
    );
  }
}

class SignupOneScreen extends StatefulWidget {
  @override
  _SignupOneScreen createState() => _SignupOneScreen();
}

class _SignupOneScreen extends State<SignupOneScreen> {
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
                    onPressed: () {},
                  ),
                ]),
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        height: size.height,
                        width: size.width,
                        child: Stack(children: [
                          Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                  padding: getPadding(bottom: 10),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Container(
                                                height: getVerticalSize(300.00),
                                                width: size.width,
                                                child: Stack(
                                                    alignment:
                                                        Alignment.bottomRight,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .topCenter,
                                                          child: Container(
                                                              margin: getMargin(
                                                                  left: 0,
                                                                  bottom: 0),
                                                              decoration: AppDecoration
                                                                  .fillIndigo800
                                                                  .copyWith(
                                                                      borderRadius:
                                                                          BorderRadiusStyle
                                                                              .customBorderBL40),
                                                              child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .centerRight,
                                                                        child: Container(
                                                                            width: getHorizontalSize(
                                                                                178.00),
                                                                            margin: getMargin(
                                                                                left: 36,
                                                                                top: 55,
                                                                                right: 36,
                                                                                bottom: 135),
                                                                            child: Text("msg_my_university_diary".tr, maxLines: null, textAlign: TextAlign.center, style: AppStyle.txtPraiseRegular35.copyWith(letterSpacing: 0.18))))
                                                                  ]))),
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomRight,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 10,
                                                                      top: 10),
                                                              child: ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                          getHorizontalSize(
                                                                              73.50)),
                                                                  child: CommonImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgEllipse33,
                                                                      height: getVerticalSize(
                                                                          121.00),
                                                                      width: getHorizontalSize(
                                                                          108.00),
                                                                      fit: BoxFit
                                                                          .cover)))),
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomLeft,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 104,
                                                                      right: 10,
                                                                      bottom:
                                                                          104),
                                                              child: ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                          getHorizontalSize(
                                                                              50.00)),
                                                                  child: CommonImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgEllipse35,
                                                                      height: getVerticalSize(
                                                                          100.00),
                                                                      width: getHorizontalSize(
                                                                          86.00),
                                                                      fit: BoxFit
                                                                          .cover))))
                                                    ]))),
                                        SizedBox(height: 30),
                                        Container(
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 22.0),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: <Widget>[
                                                TextField(
                                                  controller: _value,
                                                  decoration: InputDecoration(
                                                    errorText: a
                                                        ? "This filed is required"
                                                        : null,
                                                    icon: Icon(Icons.person),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Colors.blueAccent,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                    ),
                                                    hintText: "Elon",
                                                    labelText: 'First Name',
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 15),
                                        Container(
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 22.0),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: <Widget>[
                                                TextField(
                                                  controller: _value2,
                                                  decoration: InputDecoration(
                                                    errorText: b
                                                        ? "This filed is required"
                                                        : null,
                                                    icon: Icon(Icons.person),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Colors.blueAccent,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                    ),
                                                    hintText: "MusK",
                                                    labelText: 'Last Name',
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 15),
                                        Container(
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 22.0),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: <Widget>[
                                                TextField(
                                                  //obscureText: true,
                                                  controller: _value3,

                                                  enableSuggestions: true,
                                                  autocorrect: true,
                                                  decoration: InputDecoration(
                                                    errorText: c
                                                        ? "This filed is required"
                                                        : null,
                                                    icon: Icon(
                                                        Icons.email_outlined),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Colors.blueAccent,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                    ),
                                                    hintText: "abcd@gmail.com",
                                                    labelText: 'Email',
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 15),
                                        MyStatefulWidget(),
                                        Padding(
                                            padding: getPadding(
                                                left: 52, top: 21, right: 52),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        getPadding(bottom: 74),
                                                  ),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 4, top: 1),
                                                      child: Column(children: [
                                                        CustomButton(
                                                            width: 89,
                                                            text: "lbl_next".tr,
                                                            margin: getMargin(
                                                                left: 20,
                                                                top: 17,
                                                                right: 20),
                                                            variant:
                                                                ButtonVariant
                                                                    .FillBlue50,
                                                            shape: ButtonShape
                                                                .CircleBorder27,
                                                            fontStyle:
                                                                ButtonFontStyle
                                                                    .RobotoRomanMedium24,
                                                            onTap: onTapNext,
                                                            alignment: Alignment
                                                                .centerLeft)
                                                      ]))
                                                ]))
                                      ])))
                        ]))))));
  }

  onTapImgEllipseThirty() {
    Get.toNamed(AppRoutes.firstScreen);
  }

  onTapNext() {
    setState(() {
      if (_value.text == "" ||
          _value2.text == "" ||
          _value3.text == "" ||
          v == false) {
        a = true;
        b = true;
        c = true;
      }
      if (_value.text != "") {
        a = false;
      }
      if (_value2.text != "") {
        b = false;
      }
      if (_value3.text != "") {
        c = false;
      }
      if (v == false) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text('Please select the check box!'),
            duration: const Duration(milliseconds: 1500),
            backgroundColor: Colors.blue[200],
          ),
        );
      }
      if (_value.text != "" &&
          _value2.text != "" &&
          _value3.text != "" &&
          v == true) {
        Get.toNamed(AppRoutes.signupTwoScreen);
      }
    });
  }
}
