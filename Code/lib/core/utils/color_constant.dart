import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color deepPurple900 = fromHex('#1c19ab');

  static Color red900 = fromHex('#9c2525');

  static Color indigo50 = fromHex('#e6e6f3');

  static Color gray900 = fromHex('#1e1e1e');

  static Color bluegray100 = fromHex('#d4d4d4');

  static Color blue50 = fromHex('#eef1ff');

  static Color gray100 = fromHex('#f5f5f7');

  static Color indigo400 = fromHex('#5d5ea0');

  static Color gray900B5 = fromHex('#b51b1d1d');

  static Color indigo100 = fromHex('#b2c0ff');

  static Color indigo200 = fromHex('#9e9fe1');

  static Color black900 = fromHex('#000000');

  static Color bluegray400 = fromHex('#888888');

  static Color bluegray101 = fromHex('#d9d9d9');

  static Color indigo700 = fromHex('#2b28b0');

  static Color whiteA700 = fromHex('#ffffff');

  static Color indigo800 = fromHex('#3a477f');

  static Color deepOrangeA400 = fromHex('#ff1515');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
