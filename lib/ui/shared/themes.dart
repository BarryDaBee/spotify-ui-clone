import 'package:flutter/material.dart';

import 'colors.dart';

class Themes {
  static final theme = ThemeData.light().copyWith(
    primaryColor: Colors.white,
    iconTheme: IconThemeData(
      color: Colors.white,
    ),
    scaffoldBackgroundColor: AppColors.backgroundGrey,
    textTheme: TextTheme(
      headline1: TextStyle(
        fontSize: 22,
        color: Colors.white,
        fontWeight: FontWeight.w600,
        fontFamily: 'Gotham',
      ),
      bodyText1: TextStyle(
        fontSize: 12,
        color: Colors.white,
        fontWeight: FontWeight.w500,
        fontFamily: 'Gotham',
      ),
      bodyText2: TextStyle(
        fontSize: 13,
        color: Colors.white,
        fontWeight: FontWeight.w600,
        fontFamily: 'Gotham',
      ),
    ),
  );
}
