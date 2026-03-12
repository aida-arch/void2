import 'package:flutter/material.dart';

/// VoidMail Dark Brutalist Color System (static constants for backward compat)
class VoidColors {
  VoidColors._();

  // Backgrounds
  static const Color bgDeep = Color(0xFF121212);
  static const Color bgSurface = Color(0xFF1E1E1E);
  static const Color bgCard = Color(0xFF2A2A2A);
  static const Color bgCardHover = Color(0xFF333333);
  static const Color bgEmailRow = Color(0xFF222222);

  // Text
  static const Color textPrimary = Color(0xFFE6E6E6);
  static const Color textSecondary = Color(0xFF999999);
  static const Color textTertiary = Color(0xFF666666);
  static const Color textInverse = Color(0xFF121212);

  // Borders
  static const Color border = Color(0xFF333333);
  static const Color borderHighlight = Color(0xFF4D4D4D);

  // Accents
  static const Color accentPink = Color(0xFFFF99CC);
  static const Color accentGreen = Color(0xFF33CC33);
  static const Color accentSkyBlue = Color(0xFF87CEEB);
  static const Color accentYellow = Color(0xFFFFFF00);
  static const Color accentSand = Color(0xFFDDD9C4);

  // Functional
  static const Color success = accentGreen;
  static const Color error = Color(0xFFFF4444);
  static const Color warning = accentYellow;
  static const Color info = accentSkyBlue;
}

/// Theme-aware colors via ThemeExtension
class VoidThemeColors extends ThemeExtension<VoidThemeColors> {
  final Color bgDeep;
  final Color bgSurface;
  final Color bgCard;
  final Color bgCardHover;
  final Color bgEmailRow;
  final Color textPrimary;
  final Color textSecondary;
  final Color textTertiary;
  final Color textInverse;
  final Color border;
  final Color borderHighlight;

  const VoidThemeColors({
    required this.bgDeep,
    required this.bgSurface,
    required this.bgCard,
    required this.bgCardHover,
    required this.bgEmailRow,
    required this.textPrimary,
    required this.textSecondary,
    required this.textTertiary,
    required this.textInverse,
    required this.border,
    required this.borderHighlight,
  });

  // ── Dark palette (matches reference) ──
  static const dark = VoidThemeColors(
    bgDeep: Color(0xFF121212),
    bgSurface: Color(0xFF1E1E1E),
    bgCard: Color(0xFF2A2A2A),
    bgCardHover: Color(0xFF333333),
    bgEmailRow: Color(0xFF222222),
    textPrimary: Color(0xFFE6E6E6),
    textSecondary: Color(0xFF999999),
    textTertiary: Color(0xFF666666),
    textInverse: Color(0xFF121212),
    border: Color(0xFF333333),
    borderHighlight: Color(0xFF4D4D4D),
  );

  // ── Light palette (dark gray cards on light bg) ──
  static const light = VoidThemeColors(
    bgDeep: Color(0xFFF5F5F5),
    bgSurface: Color(0xFFF0F0F0),
    bgCard: Color(0xFFE8E8E8),
    bgCardHover: Color(0xFFDCDCDC),
    bgEmailRow: Color(0xFFECECEC),
    textPrimary: Color(0xFF1A1A1A),
    textSecondary: Color(0xFF666666),
    textTertiary: Color(0xFF999999),
    textInverse: Color(0xFFE6E6E6),
    border: Color(0xFFE0E0E0),
    borderHighlight: Color(0xFFCCCCCC),
  );

  @override
  VoidThemeColors copyWith({
    Color? bgDeep,
    Color? bgSurface,
    Color? bgCard,
    Color? bgCardHover,
    Color? bgEmailRow,
    Color? textPrimary,
    Color? textSecondary,
    Color? textTertiary,
    Color? textInverse,
    Color? border,
    Color? borderHighlight,
  }) {
    return VoidThemeColors(
      bgDeep: bgDeep ?? this.bgDeep,
      bgSurface: bgSurface ?? this.bgSurface,
      bgCard: bgCard ?? this.bgCard,
      bgCardHover: bgCardHover ?? this.bgCardHover,
      bgEmailRow: bgEmailRow ?? this.bgEmailRow,
      textPrimary: textPrimary ?? this.textPrimary,
      textSecondary: textSecondary ?? this.textSecondary,
      textTertiary: textTertiary ?? this.textTertiary,
      textInverse: textInverse ?? this.textInverse,
      border: border ?? this.border,
      borderHighlight: borderHighlight ?? this.borderHighlight,
    );
  }

  @override
  VoidThemeColors lerp(covariant ThemeExtension<VoidThemeColors>? other, double t) {
    if (other is! VoidThemeColors) return this;
    return VoidThemeColors(
      bgDeep: Color.lerp(bgDeep, other.bgDeep, t)!,
      bgSurface: Color.lerp(bgSurface, other.bgSurface, t)!,
      bgCard: Color.lerp(bgCard, other.bgCard, t)!,
      bgCardHover: Color.lerp(bgCardHover, other.bgCardHover, t)!,
      bgEmailRow: Color.lerp(bgEmailRow, other.bgEmailRow, t)!,
      textPrimary: Color.lerp(textPrimary, other.textPrimary, t)!,
      textSecondary: Color.lerp(textSecondary, other.textSecondary, t)!,
      textTertiary: Color.lerp(textTertiary, other.textTertiary, t)!,
      textInverse: Color.lerp(textInverse, other.textInverse, t)!,
      border: Color.lerp(border, other.border, t)!,
      borderHighlight: Color.lerp(borderHighlight, other.borderHighlight, t)!,
    );
  }
}

/// Convenience accessor: `context.voidColors`
extension VoidThemeColorsExtension on BuildContext {
  VoidThemeColors get voidColors =>
      Theme.of(this).extension<VoidThemeColors>() ?? VoidThemeColors.dark;
}

/// Functional color getters on VoidThemeColors (shared across themes)
extension VoidThemeColorsFunctional on VoidThemeColors {
  Color get error => VoidColors.error;
  Color get success => VoidColors.success;
  Color get warning => VoidColors.warning;
  Color get info => VoidColors.info;
}
