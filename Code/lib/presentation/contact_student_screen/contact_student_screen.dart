import 'dart:io';

import 'controller/contact_student_controller.dart';
import 'package:flutter/material.dart';
import 'package:sami_s_application1/core/app_export.dart';
import 'package:sami_s_application1/widgets/app_bar/appbar_circleimage.dart';
import 'package:sami_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:sami_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:sami_s_application1/widgets/app_bar/custom_app_bar.dart';

String pic = "";
String subject = "";
String name = "";
String emails = "";

class ContactStudentScreen extends GetWidget<ContactStudentController> {
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
                title: const Text(' Ntification'),
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
          icon:
              Icon(Icons.arrow_back, color: Color.fromARGB(255, 255, 255, 255)),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Container(
        width: size.width,
        child: SingleChildScrollView(
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
              Container(
                  margin: getMargin(left: 27, top: 27, right: 23),
                  decoration: AppDecoration.outlineIndigo200
                      .copyWith(borderRadius: BorderRadiusStyle.roundedBorder4),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                            padding: getPadding(left: 17, top: 7, bottom: 6),
                            child: InkWell(
                                borderRadius: BorderRadiusStyle.circleBorder32,
                                onTap: () {
                                  onTapImgEllipseFortyOne();
                                },
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                        getHorizontalSize(32.00)),
                                    child: CommonImageView(
                                        imagePath:
                                            ImageConstant.imgEllipse4164x64,
                                        height: getSize(64.00),
                                        width: getSize(64.00),
                                        fit: BoxFit.cover)))),
                        GestureDetector(
                            onTap: () {
                              onTapTxtIrumanayat();
                            },
                            child: Padding(
                                padding:
                                    getPadding(left: 45, top: 21, bottom: 15),
                                child: Text("lbl_irum_anayat".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtCookieRegular36
                                        .copyWith(letterSpacing: 0.18))))
                      ])),
              Container(
                  margin: getMargin(left: 27, top: 9, right: 23),
                  decoration: AppDecoration.outlineIndigo200
                      .copyWith(borderRadius: BorderRadiusStyle.roundedBorder4),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                            padding: getPadding(left: 17, top: 7, bottom: 6),
                            child: InkWell(
                                borderRadius: BorderRadiusStyle.circleBorder32,
                                onTap: () {
                                  onTapImgEllipseFortyTwo();
                                },
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                        getHorizontalSize(32.00)),
                                    child: CommonImageView(
                                        imagePath: ImageConstant.imgEllipse42,
                                        height: getSize(64.00),
                                        width: getSize(64.00),
                                        fit: BoxFit.cover)))),
                        GestureDetector(
                            onTap: () {
                              onTapTxtPirsamiullah();
                            },
                            child: Padding(
                                padding:
                                    getPadding(left: 44, top: 21, bottom: 15),
                                child: Text("lbl_pir_samiullah".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtCookieRegular36
                                        .copyWith(letterSpacing: 0.18))))
                      ])),
              Container(
                  margin: getMargin(left: 27, top: 9, right: 23),
                  decoration: AppDecoration.outlineIndigo200
                      .copyWith(borderRadius: BorderRadiusStyle.roundedBorder4),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                            padding: getPadding(left: 17, top: 7, bottom: 6),
                            child: InkWell(
                                borderRadius: BorderRadiusStyle.circleBorder32,
                                onTap: () {
                                  onTapImgEllipseFortyThree();
                                },
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                        getHorizontalSize(32.00)),
                                    child: CommonImageView(
                                        imagePath: ImageConstant.imgEllipse43,
                                        height: getSize(64.00),
                                        width: getSize(64.00),
                                        fit: BoxFit.cover)))),
                        GestureDetector(
                            onTap: () {
                              onTapTxtKhadijafarooq();
                            },
                            child: Padding(
                                padding:
                                    getPadding(left: 27, top: 21, bottom: 15),
                                child: Text("lbl_khadija_farooq".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtCookieRegular36
                                        .copyWith(letterSpacing: 0.18))))
                      ])),
              Container(
                  margin: getMargin(left: 27, top: 9, right: 23),
                  decoration: AppDecoration.outlineIndigo200
                      .copyWith(borderRadius: BorderRadiusStyle.roundedBorder4),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                            padding: getPadding(left: 10, top: 7, bottom: 9),
                            child: InkWell(
                                borderRadius: BorderRadiusStyle.circleBorder37,
                                onTap: () {
                                  onTapImgEllipseThirtyEight();
                                },
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                        getHorizontalSize(37.50)),
                                    child: CommonImageView(
                                        imagePath:
                                            ImageConstant.imgEllipse3861x75,
                                        height: getVerticalSize(61.00),
                                        width: getHorizontalSize(75.00),
                                        fit: BoxFit.cover)))),
                        GestureDetector(
                            onTap: () {
                              onTapTxtNaveedahmed();
                            },
                            child: Padding(
                                padding:
                                    getPadding(left: 30, top: 16, bottom: 20),
                                child: Text("lbl_naveed_ahmed".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtCookieRegular36
                                        .copyWith(letterSpacing: 0.18))))
                      ])),
              GestureDetector(
                  onTap: () {
                    onTapRowellipsefortyfour();
                  },
                  child: Container(
                      margin: getMargin(left: 27, top: 9, right: 23),
                      decoration: AppDecoration.outlineIndigo200.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder4),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                                padding:
                                    getPadding(left: 10, top: 7, bottom: 7),
                                child: InkWell(
                                    borderRadius:
                                        BorderRadiusStyle.circleBorder37,
                                    onTap: () {
                                      onTapImgEllipseFortyFour();
                                    },
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.circular(
                                            getHorizontalSize(38.50)),
                                        child: CommonImageView(
                                            imagePath:
                                                ImageConstant.imgEllipse44,
                                            height: getVerticalSize(63.00),
                                            width: getHorizontalSize(77.00),
                                            fit: BoxFit.cover)))),
                            GestureDetector(
                                onTap: () {
                                  onTapTxtKhubaibamjad();
                                },
                                child: Padding(
                                    padding: getPadding(
                                        left: 22, top: 21, bottom: 15),
                                    child: Text("lbl_khubaib_amjad".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtCookieRegular36
                                            .copyWith(letterSpacing: 0.18))))
                          ]))),
              Container(
                  height: getVerticalSize(332.00),
                  width: getHorizontalSize(379.00),
                  margin: getMargin(left: 17, top: 9, right: 15),
                  child: Stack(alignment: Alignment.bottomLeft, children: [
                    Align(
                        alignment: Alignment.topRight,
                        child: GestureDetector(
                            onTap: () {
                              onTapRowellipsefortyfive();
                            },
                            child: Container(
                                margin:
                                    getMargin(left: 10, right: 9, bottom: 10),
                                decoration: AppDecoration.outlineIndigo200
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder4),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                          padding: getPadding(
                                              left: 8, top: 8, bottom: 6),
                                          child: InkWell(
                                              borderRadius: BorderRadiusStyle
                                                  .circleBorder37,
                                              onTap: () {
                                                onTapImgEllipseFortyFive();
                                              },
                                              child: ClipRRect(
                                                  borderRadius: BorderRadius
                                                      .circular(
                                                          getHorizontalSize(
                                                              38.50)),
                                                  child: CommonImageView(
                                                      imagePath: ImageConstant
                                                          .imgEllipse45,
                                                      height: getVerticalSize(
                                                          63.00),
                                                      width: getHorizontalSize(
                                                          77.00),
                                                      fit: BoxFit.cover)))),
                                      GestureDetector(
                                          onTap: () {
                                            onTapTxtMaheenarshad();
                                          },
                                          child: Padding(
                                              padding: getPadding(
                                                  left: 43,
                                                  top: 22,
                                                  right: 41,
                                                  bottom: 14),
                                              child: Text(
                                                  "lbl_maheen_arshad".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtCookieRegular36
                                                      .copyWith(
                                                          letterSpacing:
                                                              0.18))))
                                    ])))),
                    Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                            padding: getPadding(top: 10),
                            child: CommonImageView(
                                imagePath: ImageConstant.imgRectangle19,
                                height: getVerticalSize(269.00),
                                width: getHorizontalSize(379.00))))
                  ]))
            ])),
      ),
      drawer: Drawer(
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
              title: const Text(' My Course '),
              onTap: () {
                Get.toNamed(AppRoutes.timetableStudentScreen);
              },
            ),
            ListTile(
              leading: Icon(Icons.notifications),
              title: const Text(' NOtification'),
              onTap: () {
                Get.toNamed(AppRoutes.notificationStudentScreen);
              },
            ),
            ListTile(
              leading: Icon(Icons.save_alt_outlined),
              title: const Text(' Saved Videos '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.edit),
              title: const Text(' Edit Profile '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app_rounded),
              title: const Text('Exit'),
              onTap: () {
                // exit(0);
              },
            ),
          ],
        ),
      ),
    ));
  }

  onTapImgEllipseFortyOne() {
    Get.toNamed(AppRoutes.contact2StudentScreen);
  }

  onTapTxtIrumanayat() {
    name = "Irum Inayat";
    subject = "Human Computer Intraction";
    emails = "irum.inayat@nu.edu.pk";
    pic = ImageConstant.imgEllipse4164x64;
    Get.toNamed(AppRoutes.contact2StudentScreen);
  }

  onTapImgEllipseFortyTwo() {
    Get.toNamed(AppRoutes.contact2StudentScreen);
  }

  onTapTxtPirsamiullah() {
    name = "Pir SamiUllah";
    subject = "Data Structure Lab";
    emails = "samiullah.shah@nu.edu.pk";
    pic = ImageConstant.imgEllipse42;
    Get.toNamed(AppRoutes.contact2StudentScreen);
  }

  onTapImgEllipseFortyThree() {
    Get.toNamed(AppRoutes.contact2StudentScreen);
  }

  onTapTxtKhadijafarooq() {
    name = "Khadija Farooq";
    subject = "Linear Algebra";
    emails = "khadija.farooq@nu.edu.pk";
    pic = ImageConstant.imgEllipse43;
    Get.toNamed(AppRoutes.contact2StudentScreen);
  }

  onTapImgEllipseThirtyEight() {
    Get.toNamed(AppRoutes.contact2StudentScreen);
  }

  onTapTxtNaveedahmed() {
    name = "Naveed Ahmed";
    subject = "OOP";
    emails = "naveed.ahmad@nu.edu.pk";
    pic = ImageConstant.imgEllipse3861x75;
    Get.toNamed(AppRoutes.contact2StudentScreen);
  }

  onTapRowellipsefortyfour() {
    Get.toNamed(AppRoutes.contact2StudentScreen);
  }

  onTapImgEllipseFortyFour() {
    Get.toNamed(AppRoutes.contact2StudentScreen);
  }

  onTapTxtKhubaibamjad() {
    name = "Khubaib Amjad";
    subject = "Software Requirement Engeenring";
    emails = "khubaib.amjad@nu.edu.pk";
    pic = ImageConstant.imgEllipse44;
    Get.toNamed(AppRoutes.contact2StudentScreen);
  }

  onTapRowellipsefortyfive() {
    Get.toNamed(AppRoutes.contact2StudentScreen);
  }

  onTapImgEllipseFortyFive() {
    Get.toNamed(AppRoutes.contact2StudentScreen);
  }

  onTapTxtMaheenarshad() {
    name = "Maheen Arshad";
    subject = "Data Structure";
    emails = "maheen.arshad@nu.edu.pk";
    pic = ImageConstant.imgEllipse45;
    Get.toNamed(AppRoutes.contact2StudentScreen);
  }

  onTapEllipseThirty() {
    Get.toNamed(AppRoutes.homeStudentScreen);
  }
}
