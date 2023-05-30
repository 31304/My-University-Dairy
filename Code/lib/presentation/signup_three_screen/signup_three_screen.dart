import 'dart:io';

import 'controller/signup_three_controller.dart';
import 'package:flutter/material.dart';
import 'package:sami_s_application1/core/app_export.dart';
import 'package:sami_s_application1/widgets/custom_button.dart';

class SignupThreeScreen extends GetWidget<SignupThreeController> {
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
                                                                      .imgEllipse351,
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
                                                        .imgEllipse331,
                                                    height:
                                                        getVerticalSize(121.00),
                                                    width: getHorizontalSize(
                                                        103.00),
                                                    fit: BoxFit.cover))))
                                  ]))),
                      Padding(
                          padding: getPadding(left: 57, top: 32, right: 57),
                          child: Text("lbl_i_m_a".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPraiseRegular64
                                  .copyWith(letterSpacing: 0.32))),
                      CustomButton(
                          width: 280,
                          text: "lbl_student".tr,
                          margin: getMargin(left: 57, top: 21, right: 56),
                          onTap: onTapStudent),
                      CustomButton(
                          width: 280,
                          text: "lbl_teacher".tr,
                          margin: getMargin(left: 57, top: 27, right: 56),
                          onTap: onTapTeacher),
                      CustomButton(
                          width: 280,
                          text: "lbl_admin_faculty".tr,
                          margin: getMargin(
                              left: 57, top: 27, right: 56, bottom: 5),
                          onTap: onTapAdminfaculty)
                    ])))));
  }

  onTapStudent() {
    Get.toNamed(AppRoutes.signupFourScreen);
  }

  onTapTeacher() {
    Get.toNamed(AppRoutes.signupFourScreen);
  }

  onTapAdminfaculty() {
    Get.toNamed(AppRoutes.signupFourScreen);
  }
}
