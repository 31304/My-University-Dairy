import 'package:flutter/material.dart';
import 'package:sami_s_application1/core/app_export.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.onTap,
      this.width,
      this.margin,
      this.prefixWidget,
      this.suffixWidget,
      this.text});

  ButtonShape? shape;

  ButtonPadding? padding;

  ButtonVariant? variant;

  ButtonFontStyle? fontStyle;

  Alignment? alignment;

  VoidCallback? onTap;

  double? width;

  EdgeInsetsGeometry? margin;

  Widget? prefixWidget;

  Widget? suffixWidget;

  String? text;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: getHorizontalSize(width ?? 0),
        margin: margin,
        padding: _setPadding(),
        decoration: _buildDecoration(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            prefixWidget ?? SizedBox(),
            Text(
              text ?? "",
              textAlign: TextAlign.center,
              style: _setFontStyle(),
            ),
            suffixWidget ?? SizedBox(),
          ],
        ),
      ),
    );
  }

  _buildDecoration() {
    return BoxDecoration(
      color: _setColor(),
      border: _setBorder(),
      borderRadius: _setBorderRadius(),
    );
  }

  _setPadding() {
    switch (padding) {
      case ButtonPadding.PaddingAll18:
        return getPadding(
          all: 18,
        );
      case ButtonPadding.PaddingAll3:
        return getPadding(
          all: 3,
        );
      case ButtonPadding.PaddingAll7:
        return getPadding(
          all: 7,
        );
      default:
        return getPadding(
          all: 12,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case ButtonVariant.FillBlue50:
        return ColorConstant.blue50;
      case ButtonVariant.FillBluegray101:
        return ColorConstant.bluegray101;
      case ButtonVariant.FillIndigo800:
        return ColorConstant.indigo800;
      default:
        return ColorConstant.blue50;
    }
  }

  _setBorder() {
    switch (variant) {
      case ButtonVariant.FillBlue50:
      case ButtonVariant.FillBluegray101:
      case ButtonVariant.FillIndigo800:
        return null;
      default:
        return Border.all(
          color: ColorConstant.indigo200,
          width: getHorizontalSize(
            1.00,
          ),
        );
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case ButtonShape.CircleBorder27:
        return BorderRadius.circular(
          getHorizontalSize(
            27.00,
          ),
        );
      case ButtonShape.CircleBorder18:
        return BorderRadius.circular(
          getHorizontalSize(
            18.00,
          ),
        );
      case ButtonShape.CircleBorder31:
        return BorderRadius.circular(
          getHorizontalSize(
            31.00,
          ),
        );
      case ButtonShape.Square:
        return BorderRadius.circular(0);
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            4.00,
          ),
        );
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.RobotoRomanMedium24:
        return TextStyle(
          color: ColorConstant.indigo400,
          fontSize: getFontSize(
            24,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.CookieRegular40:
        return TextStyle(
          color: ColorConstant.indigo400,
          fontSize: getFontSize(
            40,
          ),
          fontFamily: 'Cookie',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.RobotoRomanRegular32:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            32,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.RobotoRomanMedium15:
        return TextStyle(
          color: ColorConstant.indigo400,
          fontSize: getFontSize(
            15,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.CookieRegular36:
        return TextStyle(
          color: ColorConstant.gray100,
          fontSize: getFontSize(
            36,
          ),
          fontFamily: 'Cookie',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.CookieRegular36Indigo400:
        return TextStyle(
          color: ColorConstant.indigo400,
          fontSize: getFontSize(
            36,
          ),
          fontFamily: 'Cookie',
          fontWeight: FontWeight.w400,
        );
      default:
        return TextStyle(
          color: ColorConstant.indigo400,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400,
        );
    }
  }
}

enum ButtonShape {
  Square,
  RoundedBorder4,
  CircleBorder27,
  CircleBorder18,
  CircleBorder31,
}

enum ButtonPadding {
  PaddingAll12,
  PaddingAll18,
  PaddingAll3,
  PaddingAll7,
}

enum ButtonVariant {
  OutlineIndigo200,
  FillBlue50,
  FillBluegray101,
  FillIndigo800,
}

enum ButtonFontStyle {
  RobotoRomanRegular16,
  RobotoRomanMedium24,
  CookieRegular40,
  RobotoRomanRegular32,
  RobotoRomanMedium15,
  CookieRegular36,
  CookieRegular36Indigo400,
}
