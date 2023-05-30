import 'dart:io';
import 'controller/addevent_admin_controller.dart';
import 'package:flutter/material.dart';
import 'package:sami_s_application1/widgets/custom_button.dart';
import 'package:sami_s_application1/core/app_export.dart';

final _value = TextEditingController();
final _value2 = TextEditingController();

class AddeventAdminScreen extends StatefulWidget {
  @override
  _AddeventAdminScreen createState() => _AddeventAdminScreen();
}

class _AddeventAdminScreen extends State<AddeventAdminScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
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
                        Get.toNamed(AppRoutes.homeAdminScreen);
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.event),
                      title: const Text(' Events '),
                      onTap: () {
                        Get.toNamed(AppRoutes.eventsAdminScreen);
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.announcement),
                      title: const Text(' Announcement'),
                      onTap: () {
                        Get.toNamed(AppRoutes.announcementsAdminScreen);
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
              title: Text("Event"),
              backgroundColor: Color.fromRGBO(59, 72, 128, 1),
              leading: IconButton(
                icon: Icon(Icons.arrow_back,
                    color: Color.fromARGB(255, 255, 255, 255)),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ),
            body: SingleChildScrollView(
                child: Padding(
                    padding: getPadding(left: 15, top: 17),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Align(
                              alignment: Alignment.center,
                              child: Container(
                                  width: double.infinity,
                                  margin: getMargin(right: 14),
                                  decoration: AppDecoration.fillBluegray101
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder35),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding:
                                              getPadding(left: 90, top: 20),
                                          child: SizedBox(
                                            width: 180.0,
                                            child: TextField(
                                              // onChanged: (text) {
                                              //   value = text;
                                              // },

                                              style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 255, 255, 255),
                                              ),
                                              textAlign: TextAlign.center,
                                              controller: _value2,
                                              decoration: InputDecoration(
                                                hintText: "Title",
                                                hintStyle: TextStyle(
                                                  fontSize: 20.0,
                                                  color: Color.fromARGB(
                                                      255, 255, 255, 255),
                                                ),
                                                filled: true,
                                                fillColor: Color.fromRGBO(
                                                    59, 72, 128, 1),
                                                border: OutlineInputBorder(
                                                    borderSide: BorderSide.none,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50)),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                              left: 20, top: 20, right: 20),
                                          child: SizedBox(
                                            width: double.infinity,
                                            child: TextField(
                                              // onChanged: (text) {
                                              //   text = _value as String;
                                              // },
                                              maxLines: 15,
                                              style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 255, 255, 255),
                                              ),
                                              controller: _value,
                                              textAlign: TextAlign.center,
                                              maxLength: 500,
                                              decoration: InputDecoration(
                                                hintText: "Description",
                                                hintStyle: TextStyle(
                                                  fontSize: 20.0,
                                                  color: Color.fromARGB(
                                                      255, 255, 255, 255),
                                                ),
                                                filled: true,
                                                fillColor: Color.fromRGBO(
                                                    59, 72, 128, 1),
                                                border: OutlineInputBorder(
                                                    borderSide: BorderSide.none,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20)),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                            height: getVerticalSize(55.00),
                                            width: getHorizontalSize(122.00),
                                            margin: getMargin(
                                                left: 18,
                                                top: 20,
                                                right: 18,
                                                bottom: 20),
                                            child: Stack(
                                                alignment:
                                                    Alignment.centerRight,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Container(
                                                        margin: getMargin(
                                                            top: 1, bottom: 3),
                                                        child: CustomButton(
                                                          width: 123,
                                                          text: "Add".tr,
                                                          variant: ButtonVariant
                                                              .FillBlue50,
                                                          shape: ButtonShape
                                                              .CircleBorder27,
                                                          fontStyle: ButtonFontStyle
                                                              .RobotoRomanMedium24,
                                                          onTap: back,
                                                        ),
                                                      )),
                                                ]))
                                      ]))),
                        ])))));
  }

  onTapEllipseThirtyOne2() {
    Get.toNamed(AppRoutes.eventsAdminScreen);
  }

  back() {
    if (_value.text == "" || _value2.text == "") {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text('Please fill the field!'),
          duration: const Duration(milliseconds: 1500),
          backgroundColor: Colors.blue[200],
        ),
      );
      return;
    } else {
      _value.text = "";
      _value2.text = "";
      setState(() {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text('Event add successfully!'),
            duration: const Duration(milliseconds: 1500),
            backgroundColor: Colors.blue[200],
          ),
        );
      });
    }
  }
}
