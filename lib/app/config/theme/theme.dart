// ignore_for_file: constant_identifier_names

import "package:flutter/material.dart";

class AppTheme {
  // final TextTheme textTheme;

  bool isDark = false;
  AppColor colorScheme = AppColor.BLUE;
  final LightBlueColors _lightBlueColors = LightBlueColors();
  final DarkBlueColors _darkBlueColors = DarkBlueColors();

  AppTheme();

  //! Light Mode:
  //! here we put the light colors for the app
  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xFF059669),
      surfaceTint: Color(0xff415e91),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xFFEFFAF5),
      onPrimaryContainer: Color(0xFF5C4D4D),
      secondary: Color(0xFF4AAF90),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffdae2f9),
      onSecondaryContainer: Color(0xff3e4759),
      tertiary: Color(0xFF65BCA1),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xfffad8fd),
      onTertiaryContainer: Color(0xff573e5c),
      error: Color(0xFFD11114),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff93000a),
      surface: Color(0xfff9f9ff),
      onSurface: Color(0xff191c20),
      onSurfaceVariant: Color(0xff44474e),
      outline: Color(0xff74777f),
      outlineVariant: Color(0xffc4c6d0),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2e3036),
      inversePrimary: Color(0xffaac7ff),
      primaryFixed: Color(0xffd7e3ff),
      onPrimaryFixed: Color(0xff001b3e),
      primaryFixedDim: Color(0xffaac7ff),
      onPrimaryFixedVariant: Color(0xff284777),
      secondaryFixed: Color(0xffdae2f9),
      onSecondaryFixed: Color(0xff131c2b),
      secondaryFixedDim: Color(0xffbec6dc),
      onSecondaryFixedVariant: Color(0xff3e4759),
      tertiaryFixed: Color(0xfffad8fd),
      onTertiaryFixed: Color(0xff28132e),
      tertiaryFixedDim: Color(0xffddbce0),
      onTertiaryFixedVariant: Color(0xff573e5c),
      surfaceDim: Color(0xFFEDEDED),
      surfaceBright: Color(0xfff9f9ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff3f3fa),
      surfaceContainer: Color(0xffededf4),
      surfaceContainerHigh: Color(0xffe7e8ee),
      surfaceContainerHighest: Color(0xffe2e2e9),
    );
  }

  ThemeData light() {
    return _theme(lightScheme());
  }

  //==========================================================================

  //! dark mode:
  //! here we put the dark colors for the app
  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffaac7ff),
      surfaceTint: Color(0xffaac7ff),
      onPrimary: Color(0xff0b305f),
      primaryContainer: Color(0xff284777),
      onPrimaryContainer: Color(0xffd7e3ff),
      secondary: Color(0xffbec6dc),
      onSecondary: Color(0xff283141),
      secondaryContainer: Color(0xff3e4759),
      onSecondaryContainer: Color(0xffdae2f9),
      tertiary: Color(0xffddbce0),
      onTertiary: Color(0xff3f2844),
      tertiaryContainer: Color(0xff573e5c),
      onTertiaryContainer: Color(0xfffad8fd),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff111318),
      onSurface: Color(0xffe2e2e9),
      onSurfaceVariant: Color(0xffc4c6d0),
      outline: Color(0xff8e9099),
      outlineVariant: Color(0xff44474e),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe2e2e9),
      inversePrimary: Color(0xff415e91),
      primaryFixed: Color(0xffd7e3ff),
      onPrimaryFixed: Color(0xff001b3e),
      primaryFixedDim: Color(0xffaac7ff),
      onPrimaryFixedVariant: Color(0xff284777),
      secondaryFixed: Color(0xffdae2f9),
      onSecondaryFixed: Color(0xff131c2b),
      secondaryFixedDim: Color(0xffbec6dc),
      onSecondaryFixedVariant: Color(0xff3e4759),
      tertiaryFixed: Color(0xfffad8fd),
      onTertiaryFixed: Color(0xff28132e),
      tertiaryFixedDim: Color(0xffddbce0),
      onTertiaryFixedVariant: Color(0xff573e5c),
      surfaceDim: Color(0xff111318),
      surfaceBright: Color(0xff37393e),
      surfaceContainerLowest: Color(0xff0c0e13),
      surfaceContainerLow: Color(0xff191c20),
      surfaceContainer: Color(0xff1e2025),
      surfaceContainerHigh: Color(0xff282a2f),
      surfaceContainerHighest: Color(0xff33353a),
    );
  }

  ThemeData dark() {
    return _theme(darkScheme());
  }

  // ================================================

  ThemeData _theme(ColorScheme colorScheme) => ThemeData(
    useMaterial3: true,
    brightness: colorScheme.brightness,
    colorScheme: colorScheme,
    // textTheme: textTheme.apply(
    //   bodyColor: colorScheme.onSurface,
    //   displayColor: colorScheme.onSurface,
    // ),
    scaffoldBackgroundColor: colorScheme.surface,
    canvasColor: colorScheme.surface,
    // fontFamily: GoogleFonts.cairo().fontFamily,
    fontFamily: 'Cairo',
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      // fillColor: Colors.grey[50],
      fillColor: colorScheme.surface,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: colorScheme.outline, width: 2),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: colorScheme.outline, width: 3),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: colorScheme.error, width: 1),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: colorScheme.error, width: 2),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
    ),
  );

  ExtendedColors get extendedColors {
    if (isDark) {
      switch (colorScheme) {
        case AppColor.BLUE:
          return _darkBlueColors;
      }
    } else {
      switch (colorScheme) {
        case AppColor.BLUE:
          return _lightBlueColors;
      }
    }
  }
}

enum AppColor { BLUE }

abstract class ExtendedColors {
  Color get buttonShadow;
  Color get border;
  Color get white;
  Color get gradientEndColor;
  Color get gradientGreen;
  Color get gradientBlue;
  Color get gradientPurple;
  Color get gradientPink;
  Color get gradientIndigo;
  Color get gradientOrange;
  Color get gradientBrown;
  Color get gradientBlueGrey;
  Color get gradientTeal;
}

class LightBlueColors extends ExtendedColors {
  @override
  final Color buttonShadow = Color.fromARGB(255, 22, 47, 89);
  // 1, 1/3, 1/2, 0.61

  @override
  final Color border = Color(0xff007abc);

  @override
  final Color white = Colors.white;

  @override
  final Color gradientEndColor = Color(0xFF1A1B1F);

  @override
  final Color gradientGreen = Color(0xFF4CAF50);

  @override
  final Color gradientBlue = Color(0xFF2196F3);

  @override
  final Color gradientPurple = Color(0xFF9C27B0);

  @override
  final Color gradientPink = Color(0xFFE91E63);

  @override
  final Color gradientIndigo = Color(0xFF3F51B5);

  @override
  final Color gradientOrange = Color(0xFFFF5722);

  @override
  final Color gradientBrown = Color(0xFF795548);

  @override
  final Color gradientBlueGrey = Color(0xFF607D8B);

  @override
  final Color gradientTeal = Color(0xFF009688);
}

class DarkBlueColors extends ExtendedColors {
  @override
  final Color buttonShadow = Color.fromARGB(255, 117, 157, 237);

  @override
  final Color border = Color(0xff2f97df);

  @override
  final Color white = Colors.white;

  @override
  final Color gradientEndColor = Color(0xFF1A1B1F);

  @override
  final Color gradientGreen = Color(0xFF2E7D32);

  @override
  final Color gradientBlue = Color(0xFF1565C0);

  @override
  final Color gradientPurple = Color(0xFF6A1B9A);

  @override
  final Color gradientPink = Color(0xFFC2185B);

  @override
  final Color gradientIndigo = Color(0xFF283593);

  @override
  final Color gradientOrange = Color(0xFFD84315);

  @override
  final Color gradientBrown = Color(0xFF4E342E);

  @override
  final Color gradientBlueGrey = Color(0xFF455A64);

  @override
  final Color gradientTeal = Color(0xFF00695C);
}
