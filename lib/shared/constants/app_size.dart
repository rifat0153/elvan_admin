import 'package:flutter/cupertino.dart';

@immutable
class AppSize {
  const AppSize._();

  static const double kPadding = 8;
  static const double kRadius = 8;
  static const double kIconSize = 24;

  static const double paddingXS = 4;
  static const double paddingSM = 8;
  static const double paddingMD = 16;
  static const double paddingLG = 24;
  static const double paddingXL = 32;
  static const double padding2XL = 48;
  static const double padding3XL = 64;
  static const double padding4XL = 96;

  static const double radiusXS = 4;
  static const double radiusSM = 8;
  static const double radiusSL = 12;
  static const double radiusMD = 16;
  static const double radiusLG = 24;
  static const double radiusXL = 32;
  static const double radius2XL = 48;
  static const double radius3XL = 64;
  static const double radius4XL = 96;

  static const double iconSizeSM = 8;
  static const double iconSizeMD = 16;
  static const double iconSizeLG = 24;
  static const double iconSizeXL = 32;
  static const double iconSize2XL = 48;
  static const double iconSize3XL = 64;
  static const double iconSize4XL = 96;

  static double fontSize36 = 36; //ScreenUtil().setSp(36);
  static double fontSize24 = 24; // ScreenUtil().setSp(24);
  static double fontSize16 = 16; //ScreenUtil().setSp(16);
  static double fontSize14 = 14; //ScreenUtil().setSp(14);
  static double fontSize12 = 12; // ScreenUtil().setSp(12);
  static double fontSize11 = 11; //ScreenUtil().setSp(11);

  static double width(BuildContext context) => MediaQuery.of(context).size.width;

  static double hight(BuildContext context) => MediaQuery.of(context).size.height;
}
