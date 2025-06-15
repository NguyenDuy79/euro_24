import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../app/dimens.dart';
import 'index.dart';

class Style {
  static const PageTransitionsTheme _pageTransitionsTheme =
      PageTransitionsTheme(
    builders: <TargetPlatform, PageTransitionsBuilder>{
      TargetPlatform.android: ZoomPageTransitionsBuilder(),
      TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
    },
  );

  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: ThemeColors.scaffoldBackgroundColor,
    primaryColor: ThemeColors.primaryColor,
    appBarTheme: const AppBarTheme(
      elevation: 2,
      color: ThemeColors.appBarColor,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      elevation: 2,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      backgroundColor: ThemeColors.bottomNavigationBarBackgroundColor,
      selectedItemColor: ThemeColors.selectedItemColor,
      unselectedItemColor: ThemeColors.unselectedItemColor,
      selectedLabelStyle: TextStyle(
          fontSize: Dimension.dimens_12, overflow: TextOverflow.ellipsis),
      unselectedLabelStyle: TextStyle(
          fontSize: Dimension.dimens_12, overflow: TextOverflow.ellipsis),
      type: BottomNavigationBarType.fixed,
    ),
    pageTransitionsTheme: _pageTransitionsTheme,
    textTheme: GoogleFonts.kanitTextTheme(
      ThemeData.light().textTheme.copyWith(),
    ),
    buttonTheme: ButtonThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
    popupMenuTheme: PopupMenuThemeData(
      color: ThemeColors.primaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
  );
}
