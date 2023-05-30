import 'dart:io';

import 'controller/first_controller.dart';
import 'package:flutter/material.dart';
import 'package:sami_s_application1/core/app_export.dart';
import 'package:sami_s_application1/widgets/custom_button.dart';

class FirstScreen extends GetWidget<FirstController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
          title: Text("Sudent Dairy"),
          backgroundColor: Color.fromRGBO(59, 72, 128, 1),
          actions: [
            IconButton(
              icon: Icon(Icons.help_outline_outlined,
                  color: Color.fromARGB(255, 255, 255, 255)),
              onPressed: () => {},
            ),
          ]),
      backgroundColor: ColorConstant.whiteA700,
      body: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: SingleChildScrollView(
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                          Container(
                              height: getVerticalSize(353.00),
                              width: size.width,
                              child: Stack(
                                  alignment: Alignment.bottomLeft,
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
                                                          Alignment.center,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 20,
                                                              top: 35,
                                                              right: 20,
                                                              bottom: 121),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Container(
                                                                    width: getHorizontalSize(
                                                                        201.00),
                                                                    margin: getMargin(
                                                                        bottom:
                                                                            62),
                                                                    child: Text(
                                                                        "msg_welcome_to_my_university"
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
                                                                    padding:
                                                                        getPadding(
                                                                            top:
                                                                                46),
                                                                    child: ClipRRect(
                                                                        borderRadius:
                                                                            BorderRadius.circular(getHorizontalSize(
                                                                                43.50)),
                                                                        child: CommonImageView(
                                                                            imagePath:
                                                                                ImageConstant.imgEllipse26,
                                                                            height: getSize(87.00),
                                                                            width: getSize(87.00),
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
                                                            65.94)),
                                                child: CommonImageView(
                                                    imagePath: ImageConstant
                                                        .imgEllipse25,
                                                    height:
                                                        getVerticalSize(125.00),
                                                    width: getHorizontalSize(
                                                        129.00),
                                                    fit: BoxFit.cover))))
                                  ])),
                          CustomButton(
                              width: 280,
                              text: "lbl_log_in".tr,
                              margin: getMargin(left: 55, top: 79, right: 55),
                              onTap: onTapLogin,
                              alignment: Alignment.center),
                          CustomButton(
                              width: 280,
                              text: "lbl_sign_up".tr,
                              margin: getMargin(left: 55, top: 40, right: 55),
                              onTap: onTapSignup,
                              alignment: Alignment.center),
                          Container(
                              margin: getMargin(top: 163),
                              decoration: AppDecoration.fillGray900b5.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.customBorderTL30),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                        padding: getPadding(
                                            left: 27, top: 38, bottom: 33),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text("msg_terms_of_servise".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtAryaRegular10
                                                      .copyWith(
                                                          letterSpacing: 0.05)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 47,
                                                      top: 23,
                                                      right: 47),
                                                  child: Text(
                                                      "msg_diary_international"
                                                          .tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtAryaRegular10
                                                          .copyWith(
                                                              letterSpacing:
                                                                  0.05)))
                                            ])),
                                    Padding(
                                        padding: getPadding(
                                            top: 73, right: 10, bottom: 14),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 23, right: 23),
                                                      child: Text(
                                                          "lbl_let_s_chat".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtAryaRegular10
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      0.05)))),
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Container(
                                                      width: getHorizontalSize(
                                                          92.00),
                                                      margin: getMargin(top: 1),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            CommonImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgImage3,
                                                                height: getSize(
                                                                    25.00),
                                                                width: getSize(
                                                                    25.00)),
                                                            ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                        getHorizontalSize(
                                                                            12.50)),
                                                                child: CommonImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgEllipse23,
                                                                    height:
                                                                        getSize(
                                                                            25.00),
                                                                    width: getSize(
                                                                        25.00),
                                                                    fit: BoxFit
                                                                        .cover)),
                                                            ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                        getHorizontalSize(
                                                                            12.50)),
                                                                child: CommonImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgEllipse24,
                                                                    height:
                                                                        getSize(
                                                                            25.00),
                                                                    width: getSize(
                                                                        25.00),
                                                                    fit: BoxFit
                                                                        .cover))
                                                          ])))
                                            ]))
                                  ]))
                        ]))))
          ]),
    ));
  }

  onTapLogin() {
    Get.toNamed(AppRoutes.loginScreen);
  }

  onTapSignup() {
    Get.toNamed(AppRoutes.signupOneScreen);
  }
}
