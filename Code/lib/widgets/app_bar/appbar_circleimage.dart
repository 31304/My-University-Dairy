import 'package:flutter/material.dart';
import 'package:sami_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class AppbarCircleimage extends StatelessWidget {
  AppbarCircleimage({this.imagePath, this.svgPath, this.margin, this.onTap});

  String? imagePath;

  String? svgPath;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(
            getHorizontalSize(
              28.00,
            ),
          ),
          child: CommonImageView(
            svgPath: svgPath,
            imagePath: imagePath,
            height: getSize(
              56.00,
            ),
            width: getSize(
              56.00,
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
