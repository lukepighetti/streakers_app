import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData appTheme(BuildContext context) {
  final primaryColor = Colors.orange.shade700;

  return ThemeData(
    splashFactory: NoSplash.splashFactory,
    colorScheme: ColorScheme.fromSeed(
      background: Colors.white,
      brightness: Brightness.light,
      seedColor: primaryColor,
      primary: primaryColor,
      error: Colors.red,
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(),
    ),
    textTheme: GoogleFonts.outfitTextTheme(),
    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        minimumSize: Size(96, 48),
        textStyle: context.textButton,
      ),
    ),
  );
}

extension ThemeExtensions on BuildContext {
  ColorScheme get _colorScheme => Theme.of(this).colorScheme;

  Color get colorPrimary => _colorScheme.primary;
  Color get colorError => _colorScheme.error;
  Color get colorForeground => _colorScheme.onSurface;
  Color get colorBackground => _colorScheme.surface;
  Color get colorScrim => _colorScheme.scrim.withOpacity(0.5);
  Color get colorGrey1 => _colorScheme.surfaceContainerLowest;
  Color get colorGrey2 => _colorScheme.surfaceContainerLow;
  Color get colorGrey3 => _colorScheme.surfaceContainer;
  Color get colorGrey4 => _colorScheme.surfaceContainerHigh;
  Color get colorGrey5 => _colorScheme.surfaceContainerHighest;

  TextStyle get textHeadline => GoogleFonts.outfit(
        fontSize: 24,
        fontWeight: FontWeight.w400,
        color: colorForeground,
      );

  TextStyle get textGoalCardTitle => GoogleFonts.outfit(
        fontSize: 18,
        fontWeight: FontWeight.w400,
        color: colorForeground,
      );

  TextStyle get textBody => GoogleFonts.outfit(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: colorForeground,
      );

  TextStyle get textButton => GoogleFonts.outfit(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: colorForeground,
      );

  TextStyle get textCaption => GoogleFonts.outfit(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: colorForeground,
      );

  TextStyle get textForAnts => GoogleFonts.outfit(
        fontSize: 10,
        fontWeight: FontWeight.w400,
        color: colorForeground,
      );
}
