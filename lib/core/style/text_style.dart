import 'package:flutter/material.dart';
import 'package:qr_scanner/core/constants/app_theme_const.dart';

extension TextThemeExt on TextTheme {
  String get _fontFamily => 'Comic Neue';

  TextStyle get largeTitle => TextStyle(
    fontSize: 42,
    fontWeight: FontWeight.bold,
    fontFamily: _fontFamily,
    color: Color(0xFF333333),
  );

  TextStyle get bodySmall => TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.normal,
    fontFamily: _fontFamily,
    color: Color(0xFF3E3E42),
  );

  TextStyle get body17 => TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w600,
    fontFamily: _fontFamily,
    color: AppThemeConst.textColor,
  );

  TextStyle get titleAppBar => TextStyle(
    fontSize: 27,
    fontWeight: FontWeight.w600,
    fontFamily: _fontFamily,
    color: AppThemeConst.textColor,
  );

  TextStyle get body12 => TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    fontFamily: _fontFamily,
    color: AppThemeConst.bgBlue,
  );
}
