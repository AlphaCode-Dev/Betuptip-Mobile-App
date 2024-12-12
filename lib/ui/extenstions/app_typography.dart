import 'package:flutter/material.dart';

@immutable
class AppTypography extends ThemeExtension<AppTypography> {
  const AppTypography({
    required this.headingXSmall,
    required this.buttonInput,
    required this.paragraphLarge,
    required this.paragraphMedium,
    required this.paragraphSmall,
    required this.paragraphXSmall,
    required this.labelXSmall,
  });

  final TextStyle? headingXSmall;
  final TextStyle? buttonInput;
  final TextStyle? paragraphLarge;
  final TextStyle? paragraphMedium;
  final TextStyle? paragraphSmall;
  final TextStyle? paragraphXSmall;
  final TextStyle? labelXSmall;

  @override
  AppTypography copyWith({
    TextStyle? headingXSmall,
    TextStyle? buttonInput,
    TextStyle? paragraphLarge,
    TextStyle? paragraphMedium,
    TextStyle? paragraphSmall,
    TextStyle? paragraphXSmall,
    TextStyle? labelXSmall,
  }) {
    return AppTypography(
      headingXSmall: headingXSmall ?? this.headingXSmall,
      buttonInput: buttonInput ?? this.buttonInput,
      paragraphLarge: paragraphLarge ?? this.paragraphLarge,
      paragraphMedium: paragraphMedium ?? this.paragraphMedium,
      paragraphSmall: paragraphSmall ?? this.paragraphSmall,
      paragraphXSmall: paragraphXSmall ?? this.paragraphXSmall,
      labelXSmall: labelXSmall ?? this.labelXSmall,
    );
  }

  @override
  AppTypography lerp(AppTypography? other, double t) {
    if (other is! AppTypography) {
      return this;
    }
    return AppTypography(
      headingXSmall: TextStyle.lerp(headingXSmall, other.headingXSmall, t),
      buttonInput: TextStyle.lerp(buttonInput, other.buttonInput, t),
      paragraphLarge: TextStyle.lerp(paragraphLarge, other.paragraphLarge, t),
      paragraphMedium:
          TextStyle.lerp(paragraphMedium, other.paragraphMedium, t),
      paragraphSmall: TextStyle.lerp(paragraphSmall, other.paragraphSmall, t),
      paragraphXSmall:
          TextStyle.lerp(paragraphXSmall, other.paragraphXSmall, t),
      labelXSmall: TextStyle.lerp(labelXSmall, other.labelXSmall, t),
    );
  }
}
