import '../controller/notification_student_controller.dart';
import '../models/listcancelledclass_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sami_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class ListcancelledclassItemWidget extends StatelessWidget {
  ListcancelledclassItemWidget(this.listcancelledclassItemModelObj);

  ListcancelledclassItemModel listcancelledclassItemModelObj;

  var controller = Get.find<NotificationStudentController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getVerticalSize(
        60.00,
      ),
      width: size.width,
      margin: getMargin(
        top: 2.5,
        bottom: 2.5,
      ),
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: getMargin(
                top: 2,
              ),
              decoration: AppDecoration.fillBluegray101,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: getPadding(
                      left: 13,
                      top: 9,
                      bottom: 10,
                    ),
                    child: Text(
                      "msg_cancelled_classes".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRobotoRomanRegular32.copyWith(
                        letterSpacing: 0.16,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 65,
                      top: 11,
                      right: 15,
                      bottom: 11,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          17.66,
                        ),
                      ),
                      child: CommonImageView(
                        imagePath: ImageConstant.imgEllipse46,
                        height: getSize(
                          35.00,
                        ),
                        width: getSize(
                          35.00,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              height: getVerticalSize(
                3.00,
              ),
              width: size.width,
              margin: getMargin(
                bottom: 10,
              ),
              decoration: BoxDecoration(
                color: ColorConstant.black900,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
