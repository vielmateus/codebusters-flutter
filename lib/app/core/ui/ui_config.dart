import 'package:flutter/material.dart';

class UiConfig {
  UiConfig._();

  static String get title => 'Poupi';

  static ColorScheme get colorScheme => const ColorScheme(
        brightness: Brightness.light,
        primary: Color(0xff694A73),
        primaryContainer: Color(0xffBD89CE),
        secondary: Color(0xff1D1D1D),
        onSecondary: Color(0xff282828),
        tertiary: Color(0xff4F4F4F),
        onPrimary: Color(0xffE4C3EE),
        onPrimaryContainer: Color(0xff000000),
        secondaryContainer: Color(0xffFFFFFF),
        onSecondaryContainer: Color(0xff333333),
        onTertiary: Color(0xff828282),
        onTertiaryContainer: Color(0xffBDBDBD),
        tertiaryContainer: Color(0xffE0E0E0),
        error: Color(0xffF4511E),
        onError: Color(0xffF4511E),
        background: Color(0xffE0E0E0),//Color(0xffBD89CE),
        onBackground: Color(0xffE0E0E0),//Color(0xffBD89CE),
        surface: Color(0xffE0E0E0),//Color(0xffBD89CE),
        onSurface: Color(0xffF5F5F5),
        outline: Color(0xffE6E6E6),
        surfaceVariant: Color(0xff108d1c),
      );
}
