
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_challenge/utilities/light.dart';
import 'package:video_challenge/utilities/dark.dart';

class AppThemeData {
  //
  AppThemeData._();

  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: CLColorWhite,
    colorScheme: const ColorScheme.light(
      primary: CLPrimaryColor,
      secondary: CLSecondaryColor,
    ),
    primaryColor: CLPrimaryColor,
    //canvasColor: NBColorBlack,
    //primaryColorLight: NBColorWhite,
    //primaryColorDark: NBColorBlack,
    // shadowColor: NBColorBlack,
    // unselectedWidgetColor: NBNotSelected,
    // splashColor: NBColorWhite,
    // secondaryHeaderColor: NBNotSelected,
    dividerColor: CLColorBlack,
    fontFamily: GoogleFonts.openSans().fontFamily,
    appBarTheme: const AppBarTheme(
      color: CLColorWhite,
      iconTheme: IconThemeData(color: CLColorBlack),
      systemOverlayStyle:
      SystemUiOverlayStyle(statusBarIconBrightness: Brightness.dark),
    ),
    textSelectionTheme: const TextSelectionThemeData(cursorColor: CLColorBlack),
    // cardTheme: const CardTheme(color: NBColorWhite),
    // cardColor: NBColorWhite,
    iconTheme: const IconThemeData(color: CLColorBlack),
    bottomSheetTheme: const BottomSheetThemeData(backgroundColor: CLColorWhite),
    textTheme: const TextTheme(
      labelLarge: TextStyle(color: CLColorBlack),
      titleLarge: TextStyle(color: CLColorBlack),
      titleSmall: TextStyle(color: ClColorBlackGray),
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  ).copyWith(
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: <TargetPlatform, PageTransitionsBuilder>{
        TargetPlatform.android: OpenUpwardsPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        TargetPlatform.linux: OpenUpwardsPageTransitionsBuilder(),
        TargetPlatform.macOS: OpenUpwardsPageTransitionsBuilder(),
      },
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: CDColorWhite,
    primaryColor: CDPrimaryColor,
    //canvasColor: NBColorBlack,
    //primaryColorLight: NBColorWhite,
    //primaryColorDark: NBColorBlack,
    // shadowColor: NBColorBlack,
    // unselectedWidgetColor: NBNotSelected,
    // splashColor: NBColorWhite,
    // secondaryHeaderColor: NBNotSelected,
    dividerColor: CDColorBlack,
    fontFamily: GoogleFonts.openSans().fontFamily,
    appBarTheme: const AppBarTheme(
      color: CDColorWhite,
      iconTheme: IconThemeData(color: CDColorBlack),
      systemOverlayStyle:
      SystemUiOverlayStyle(statusBarIconBrightness: Brightness.dark),
    ),
    textSelectionTheme: const TextSelectionThemeData(cursorColor: CDColorBlack),
    colorScheme: const ColorScheme.dark(
      primary: CDPrimaryColor,
    ),
    // cardTheme: const CardTheme(color: NBColorWhite),
    // cardColor: NBColorWhite,
    iconTheme: const IconThemeData(color: CDColorBlack),
    bottomSheetTheme: const BottomSheetThemeData(backgroundColor: CDColorWhite),
    textTheme: const TextTheme(
      labelLarge: TextStyle(color: CDPrimaryColor),
      titleLarge: TextStyle(color: CDColorBlack),
      titleSmall: TextStyle(color: CDColorBlackGray),
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  ).copyWith(
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: <TargetPlatform, PageTransitionsBuilder>{
        TargetPlatform.android: OpenUpwardsPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        TargetPlatform.linux: OpenUpwardsPageTransitionsBuilder(),
        TargetPlatform.macOS: OpenUpwardsPageTransitionsBuilder(),
      },
    ),
  );
}

TextStyle get subHeadingStyle{
  return GoogleFonts.lato(
    textStyle: const TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
    ),
  );
}

TextStyle get headingStyle{
  return GoogleFonts.lato(
    textStyle: const TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold,
    ),
  );
}