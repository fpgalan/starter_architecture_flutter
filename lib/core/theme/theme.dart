import 'package:flutter/material.dart';
import 'package:starter_architecture_flutter/core/constants/colors.dart';

// Esquemas de colores
ColorScheme mLightColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.light,
  seedColor: Palette.blue,
);
ColorScheme mDarkColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: Palette.blue,
);

// Temas
ThemeData mLightTheme = ThemeData.from(colorScheme: mLightColorScheme, useMaterial3: true);
ThemeData mDarkTheme = ThemeData.from(colorScheme: mDarkColorScheme, useMaterial3: true);
