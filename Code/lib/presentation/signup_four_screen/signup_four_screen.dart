import 'dart:io';

import 'controller/signup_four_controller.dart';
import 'package:flutter/material.dart';
import 'package:sami_s_application1/core/app_export.dart';
import 'package:sami_s_application1/widgets/custom_button.dart';

class SignupFourScreen extends StatefulWidget {
  @override
  _SignupFourScreen createState() => _SignupFourScreen();
}

class _SignupFourScreen extends State<SignupFourScreen> {
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
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              height: getVerticalSize(357.00),
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
                                            child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                      padding: getPadding(
                                                          top: 136, bottom: 94),
                                                      child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  getHorizontalSize(
                                                                      50.00)),
                                                          child: CommonImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgEllipse352,
                                                              height:
                                                                  getVerticalSize(
                                                                      100.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      82.00),
                                                              fit: BoxFit
                                                                  .cover))),
                                                  Container(
                                                      width: getHorizontalSize(
                                                          178.00),
                                                      margin: getMargin(
                                                          left: 103,
                                                          top: 129,
                                                          right: 28,
                                                          bottom: 129),
                                                      child: Text(
                                                          "msg_my_university_diary"
                                                              .tr,
                                                          maxLines: null,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .txtPraiseRegular35
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      0.18)))
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
                                                        .imgEllipse332,
                                                    height:
                                                        getVerticalSize(121.00),
                                                    width: getHorizontalSize(
                                                        103.00),
                                                    fit: BoxFit.cover))))
                                  ]))),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                              padding: getPadding(left: 22, top: 13, right: 22),
                              child: Text("msg_do_i_require_audio".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: AppStyle.txtPraiseRegular50
                                      .copyWith(letterSpacing: 0.25)))),
                      CustomButton(
                          width: 280,
                          text: "lbl_yes".tr,
                          margin: getMargin(left: 56, top: 18, right: 56),
                          onTap: onTapYes),
                      CustomButton(
                          width: 280,
                          text: "lbl_no".tr,
                          margin: getMargin(
                              left: 56, top: 27, right: 56, bottom: 5),
                          onTap: onTapNo)
                    ])))));
  }

  onTapYes() {
    Get.toNamed(AppRoutes.firstScreen);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text('Please select the check box!'),
        duration: const Duration(milliseconds: 1500),
        backgroundColor: Colors.blue[200],
      ),
    );
  }

  onTapNo() {
    Get.toNamed(AppRoutes.firstScreen);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text('Your Account created Successfully!'),
        duration: const Duration(milliseconds: 1500),
        backgroundColor: Colors.blue[200],
      ),
    );
  }
}
