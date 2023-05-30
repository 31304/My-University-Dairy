import 'package:flutter/material.dart';
import 'package:sami_s_application1/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get txtOutlineIndigo200 => BoxDecoration(
        color: ColorConstant.blue50,
        border: Border.all(
          color: ColorConstant.indigo200,
          width: getHorizontalSize(
            1.00,
          ),
        ),
      );
  static BoxDecoration get fillIndigo800 => BoxDecoration(
        color: ColorConstant.indigo800,
      );
  static BoxDecoration get outlineIndigo200 => BoxDecoration(
        color: ColorConstant.blue50,
        border: Border.all(
          color: ColorConstant.indigo200,
          width: getHorizontalSize(
            1.00,
          ),
        ),
      );
  static BoxDecoration get fillBluegray101 => BoxDecoration(
        color: ColorConstant.bluegray101,
      );
  static BoxDecoration get fillBlue50 => BoxDecoration(
        color: ColorConstant.blue50,
      );
  static BoxDecoration get fillBluegray100 => BoxDecoration(
        color: ColorConstant.bluegray100,
      );
  static BoxDecoration get fillDeeporangeA400 => BoxDecoration(
        color: ColorConstant.deepOrangeA400,
      );
  static BoxDecoration get fillIndigo100 => BoxDecoration(
        color: ColorConstant.indigo100,
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
  static BoxDecoration get fillGray900b5 => BoxDecoration(
        color: ColorConstant.gray900B5,
      );
}

class BorderRadiusStyle {
  static BorderRadius customBorderTL30 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        30.00,
      ),
    ),
    topRight: Radius.circular(
      getHorizontalSize(
        30.00,
      ),
    ),
  );

  static BorderRadius customBorderBL25 = BorderRadius.only(
    bottomLeft: Radius.circular(
      getHorizontalSize(
        25.00,
      ),
    ),
    bottomRight: Radius.circular(
      getHorizontalSize(
        25.00,
      ),
    ),
  );

  static BorderRadius customBorderBL40 = BorderRadius.only(
    bottomLeft: Radius.circular(
      getHorizontalSize(
        40.00,
      ),
    ),
    bottomRight: Radius.circular(
      getHorizontalSize(
        40.00,
      ),
    ),
  );

  static BorderRadius circleBorder37 = BorderRadius.circular(
    getHorizontalSize(
      37.50,
    ),
  );

  static BorderRadius circleBorder28 = BorderRadius.circular(
    getHorizontalSize(
      28.00,
    ),
  );

  static BorderRadius roundedBorder17 = BorderRadius.circular(
    getHorizontalSize(
      17.66,
    ),
  );

  static BorderRadius circleBorder25 = BorderRadius.circular(
    getHorizontalSize(
      25.00,
    ),
  );

  static BorderRadius roundedBorder12 = BorderRadius.circular(
    getHorizontalSize(
      12.50,
    ),
  );

  static BorderRadius circleBorder73 = BorderRadius.circular(
    getHorizontalSize(
      73.50,
    ),
  );

  static BorderRadius roundedBorder4 = BorderRadius.circular(
    getHorizontalSize(
      4.00,
    ),
  );

  static BorderRadius roundedBorder35 = BorderRadius.circular(
    getHorizontalSize(
      35.00,
    ),
  );

  static BorderRadius roundedBorder43 = BorderRadius.circular(
    getHorizontalSize(
      43.50,
    ),
  );

  static BorderRadius circleBorder20 = BorderRadius.circular(
    getHorizontalSize(
      20.00,
    ),
  );

  static BorderRadius circleBorder65 = BorderRadius.circular(
    getHorizontalSize(
      65.94,
    ),
  );

  static BorderRadius circleBorder32 = BorderRadius.circular(
    getHorizontalSize(
      32.00,
    ),
  );

  static BorderRadius roundedBorder53 = BorderRadius.circular(
    getHorizontalSize(
      53.50,
    ),
  );

  static BorderRadius circleBorder50 = BorderRadius.circular(
    getHorizontalSize(
      50.00,
    ),
  );

  static BorderRadius txtRoundedBorder4 = BorderRadius.circular(
    getHorizontalSize(
      4.00,
    ),
  );

  static BorderRadius circleBorder90 = BorderRadius.circular(
    getHorizontalSize(
      90.50,
    ),
  );
}
