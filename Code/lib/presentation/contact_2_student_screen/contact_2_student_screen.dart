import 'dart:io';

import 'package:url_launcher/url_launcher.dart';
import 'controller/contact_2_student_controller.dart';
import 'package:flutter/material.dart';
import 'package:sami_s_application1/core/app_export.dart';
import 'package:sami_s_application1/widgets/app_bar/appbar_circleimage.dart';
import 'package:sami_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:sami_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:sami_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:sami_s_application1/widgets/custom_button.dart';
import '../contact_student_screen/contact_student_screen.dart';

String emails = "samiirshad1103@gmai.com";
String email = "samiirshad1103@gmai.com";

class Contact2StudentScreen extends StatefulWidget {
  @override
  _Contact2StudentScreen createState() => _Contact2StudentScreen();
}

class _Contact2StudentScreen extends State<Contact2StudentScreen> {
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                Container(
                    decoration: AppDecoration.fillBlue50.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderBL25),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                              padding: getPadding(top: 16, bottom: 15),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(
                                      getHorizontalSize(50.00)),
                                  child: CommonImageView(
                                      imagePath: pic,
                                      height: getVerticalSize(100.00),
                                      width: getHorizontalSize(99.00),
                                      fit: BoxFit.cover))),
                          Padding(
                              padding: getPadding(top: 47, bottom: 29),
                              child: Text(name,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtCookieRegular48
                                      .copyWith(letterSpacing: 0.24)))
                        ])),
                Align(
                    alignment: Alignment.center,
                    child: Container(
                        width: getHorizontalSize(247.00),
                        margin: getMargin(left: 33, top: 43, right: 33),
                        child: Text(subject,
                            maxLines: null,
                            textAlign: TextAlign.center,
                            style: AppStyle.txtCookieRegular36
                                .copyWith(letterSpacing: 0.18)))),
                Align(
                    alignment: Alignment.center,
                    child: Padding(
                        padding: getPadding(left: 3, top: 25, right: 3),
                        child: CommonImageView(
                            imagePath: ImageConstant.imgWhatsappimage,
                            height: getVerticalSize(157.00),
                            width: getHorizontalSize(387.00)))),
                Align(
                    alignment: Alignment.center,
                    child: Padding(
                        padding: getPadding(left: 33, right: 33),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              CustomButton(
                                width: 123,
                                text: "lbl_contact".tr,
                                variant: ButtonVariant.FillBlue50,
                                shape: ButtonShape.CircleBorder27,
                                fontStyle: ButtonFontStyle.RobotoRomanMedium24,
                                onTap: launchEmail,
                              ),
                              CustomButton(
                                  width: 142,
                                  text: "lbl_book_slot".tr,
                                  variant: ButtonVariant.FillBlue50,
                                  shape: ButtonShape.CircleBorder27,
                                  fontStyle:
                                      ButtonFontStyle.RobotoRomanMedium24,
                                  onTap: onTapBookslot)
                            ]))),
                Align(
                    alignment: Alignment.center,
                    child: Padding(
                        padding: getPadding(top: 30, right: 3),
                        child: CommonImageView(
                            imagePath: ImageConstant.imgRectangle19274x390,
                            height: getVerticalSize(274.00),
                            width: getHorizontalSize(390.00))))
              ]))),
    ));
  }

  onTapBookslot() {
    Get.toNamed(AppRoutes.contact3StudentScreen);
  }

  onTapEllipseThirty1() {
    Get.toNamed(AppRoutes.contactStudentScreen);
  }

  launchEmail() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text('Email send Successfully!'),
        backgroundColor: Colors.blue[200],
        duration: const Duration(milliseconds: 1500),
      ),
    );
  }
}
