import 'package:flutter/material.dart';

import '../models/theme_model.dart';
import '../static/standard_styling/standard_color.dart';

class ThemeRepository {
  ThemeModel getTheme() {
    return ThemeModel(
      data: ThemeData(
        fontFamily: "Segoe",
        textTheme: const TextTheme(
          titleMedium: TextStyle(
            fontSize: 12,
            fontFamily: "Segoe",
            color: StandardColor.black,
          ),
          displaySmall: TextStyle(
            fontSize: 16,
            fontFamily: "Segoe",
            color: StandardColor.black,
            fontWeight: FontWeight.w600,
          ),
          bodySmall: TextStyle(
            fontSize: 14,
            fontFamily: "Segoe",
            color: StandardColor.white,
            fontWeight: FontWeight.w800,
          ),
          bodyMedium: TextStyle(
            fontSize: 16,
            fontFamily: "Segoe",
            color: StandardColor.black,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
    );
  }
}
