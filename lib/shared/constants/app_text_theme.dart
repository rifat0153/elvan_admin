import 'package:elvan_admin/shared/constants/app_colors.dart';
import 'package:elvan_admin/shared/constants/app_size.dart';
import 'package:flutter/material.dart';

@immutable
class AppTextTheme {
  const AppTextTheme._();
  static const String _fontFamily = 'Poppins';

  static TextTheme textThemeData = TextTheme(
      displaySmall: TextStyle(fontFamily: _fontFamily, fontWeight: FontWeight.w400, fontSize: AppSize.fontSize36, color: AppColors.primaryRed),
      headlineSmall: TextStyle(fontFamily: _fontFamily, fontWeight: FontWeight.w400, fontSize: AppSize.fontSize24, color: AppColors.black),
      titleMedium: TextStyle(fontFamily: _fontFamily, fontWeight: FontWeight.w500, fontSize: AppSize.fontSize16),
      labelLarge: TextStyle(fontFamily: _fontFamily, fontWeight: FontWeight.w500, fontSize: AppSize.fontSize14, color: AppColors.gray),
      labelMedium: TextStyle(fontFamily: _fontFamily, fontWeight: FontWeight.w500, fontSize: AppSize.fontSize12, color: AppColors.gray),
      labelSmall: TextStyle(fontFamily: _fontFamily, fontWeight: FontWeight.w500, fontSize: AppSize.fontSize11, color: AppColors.gray));
}
