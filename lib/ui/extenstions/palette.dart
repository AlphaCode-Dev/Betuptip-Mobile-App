import 'package:flutter/material.dart';

@immutable
class Palette extends ThemeExtension<Palette> {
  const Palette({
    required this.allGreen50,
    required this.allGreen500,
    required this.allBlue400,
    required this.allBlue500,
    required this.allRed50,
    required this.allRed400,
    required this.allRed500,
    required this.allRed600,
    required this.allGrey50,
    required this.allGrey100,
    required this.allGrey200,
    required this.allGrey400,
    required this.allGrey500,
    required this.allGrey600,
    required this.allGrey700,
    required this.allGrey800,
    required this.greyScaleText,
    required this.backgroundTertiary,
    required this.black,
    required this.white,
  });

  final Color? allGreen50;
  final Color? allGreen500;
  final Color? allBlue400;
  final Color? allBlue500;
  final Color? allRed50;
  final Color? allRed400;
  final Color? allRed500;
  final Color? allRed600;
  final Color? allGrey50;
  final Color? allGrey100;
  final Color? allGrey200;
  final Color? allGrey400;
  final Color? allGrey500;
  final Color? allGrey600;
  final Color? allGrey700;
  final Color? allGrey800;
  final Color? greyScaleText;
  final Color? backgroundTertiary;
  final Color? black;
  final Color? white;

  @override
  Palette copyWith({
    Color? allGreen50,
    Color? allGreen500,
    Color? allBlue400,
    Color? allBlue500,
    Color? allRed50,
    Color? allRed400,
    Color? allRed500,
    Color? allRed600,
    Color? allGrey50,
    Color? allGrey100,
    Color? allGrey200,
    Color? allGrey400,
    Color? allGrey500,
    Color? allGrey600,
    Color? allGrey700,
    Color? allGrey800,
    Color? greyScaleText,
    Color? backgroundTertiary,
    Color? black,
    Color? white,
  }) {
    return Palette(
      allGreen50: allGreen50 ?? this.allGreen50,
      allGreen500: allGreen500 ?? this.allGreen500,
      allBlue400: allBlue400 ?? this.allBlue400,
      allBlue500: allBlue500 ?? this.allBlue500,
      allRed50: allRed50 ?? this.allRed50,
      allRed400: allRed400 ?? this.allRed400,
      allRed500: allRed500 ?? this.allRed500,
      allRed600: allRed600 ?? this.allRed600,
      allGrey50: allGrey50 ?? this.allGrey50,
      allGrey100: allGrey100 ?? this.allGrey100,
      allGrey200: allGrey200 ?? this.allGrey200,
      allGrey400: allGrey400 ?? this.allGrey400,
      allGrey500: allGrey500 ?? this.allGrey500,
      allGrey600: allGrey600 ?? this.allGrey600,
      allGrey700: allGrey700 ?? this.allGrey700,
      allGrey800: allGrey800 ?? this.allGrey800,
      greyScaleText: greyScaleText ?? this.greyScaleText,
      backgroundTertiary: backgroundTertiary ?? this.backgroundTertiary,
      black: black ?? this.black,
      white: white ?? this.white,
    );
  }

  @override
  Palette lerp(Palette? other, double t) {
    if (other is! Palette) {
      return this;
    }
    return Palette(
      allGreen50: Color.lerp(allGreen50, other.allGreen50, t),
      allGreen500: Color.lerp(allGreen500, other.allGreen500, t),
      allBlue400: Color.lerp(allBlue400, other.allBlue400, t),
      allBlue500: Color.lerp(allBlue500, other.allBlue500, t),
      allRed50: Color.lerp(allRed50, other.allRed50, t),
      allRed400: Color.lerp(allRed400, other.allRed400, t),
      allRed500: Color.lerp(allRed500, other.allRed500, t),
      allRed600: Color.lerp(allRed600, other.allRed600, t),
      allGrey50: Color.lerp(allGrey50, other.allGrey50, t),
      allGrey100: Color.lerp(allGrey100, other.allGrey100, t),
      allGrey200: Color.lerp(allGrey200, other.allGrey200, t),
      allGrey400: Color.lerp(allGrey400, other.allGrey400, t),
      allGrey500: Color.lerp(allGrey500, other.allGrey500, t),
      allGrey600: Color.lerp(allGrey600, other.allGrey600, t),
      allGrey700: Color.lerp(allGrey700, other.allGrey700, t),
      allGrey800: Color.lerp(allGrey800, other.allGrey800, t),
      greyScaleText: Color.lerp(greyScaleText, other.greyScaleText, t),
      backgroundTertiary:
          Color.lerp(backgroundTertiary, other.backgroundTertiary, t),
      black: Color.lerp(black, other.black, t),
      white: Color.lerp(white, other.white, t),
    );
  }
}
