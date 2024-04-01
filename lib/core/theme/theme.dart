import 'package:flutter/material.dart';

const fontFamily = 'Poppins';

final themeLight = ThemeData(
  primaryColorLight: const Color(0xff8121D0),
  brightness: Brightness.light,
  primaryColor: const Color(0xff8121D0),
  highlightColor: Colors.black,
  canvasColor: Colors.white,
  fontFamily: fontFamily,
  splashColor: Colors.transparent,
  appBarTheme: const AppBarTheme(foregroundColor: Color(0xffFAF9F6)),
  scaffoldBackgroundColor: const Color(0xffFAF9F6),
  iconTheme: const IconThemeData(color: Color(0xff8121D0)),

  // colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.red)
  //     .copyWith(
  //       secondary: Colors.black,
  //       brightness: Brightness.light,
  //     )
  //     .copyWith(background: Colors.white),
);

final themeDark = ThemeData(
  brightness: Brightness.dark,
  primaryColorDark: const Color(0xffC0392B),
  primaryColor: const Color(0xffC0392B),
  highlightColor: const Color(0xffC0392B),
  canvasColor: Colors.white,
  fontFamily: fontFamily,
  splashColor: Colors.transparent,
  scaffoldBackgroundColor: Colors.black,
  colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.red)
      .copyWith(
        secondary: const Color(0xffC0392B),
        brightness: Brightness.dark,
      )
      .copyWith(background: Colors.grey[800]),
);
