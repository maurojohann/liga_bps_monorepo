import 'package:flutter/material.dart';

class AppThemes {
  static ThemeData get lightThemeData =>
      themeData(_lightColorSchemes, _lightFocusColor);
  // ThemeData get darkThemeData => themeData(_darkColorSchemes, _darkFocusColor);

  static ThemeData themeData(ColorScheme colorScheme, Color focusColor) {
    return ThemeData(
      colorScheme: colorScheme,
      tabBarTheme: TabBarTheme(
        unselectedLabelColor: const Color.fromARGB(255, 3, 3, 3),
        unselectedLabelStyle:
            const TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
        labelColor: const Color.fromARGB(255, 255, 255, 255),
        indicatorSize: TabBarIndicatorSize.tab,
        labelStyle: const TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
        indicator: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              blurRadius: 12,
              color: Color.fromARGB(116, 255, 40, 130),
            ),
          ],
          borderRadius: BorderRadius.circular(25),
          color: const Color.fromARGB(255, 255, 40, 130),
        ),
      ),
      buttonTheme: const ButtonThemeData(
        disabledColor: Color.fromARGB(255, 255, 40, 130),
      ),
      elevatedButtonTheme: _elevatedButtonThemeData,
    );
  }

  static final Color _lightFocusColor = Colors.black.withOpacity(0.12);
  static final Color _darkFocusColor = Colors.white.withOpacity(0.12);

  static final Color _lightFillColor = const Color.fromARGB(255, 84, 84, 84);
  // static const Color _darkFillColor = Colors.white;

//  final  _darkColorSchemes = const ColorScheme(
//     primary: Color(0xFFFF8383),
//     primaryContainer: Color(0xFF1CDEC9),
//     secondary: Color(0xFF4D1F7C),
//     secondaryContainer: Color(0xFF451B6F),
//     background: Color(0xFF241E30),
//     surface: Color(0xFF1F1929),
//     onBackground: Color(0x0DFFFFFF), // White with 0.05 opacity
//     error: _darkFillColor,
//     onError: _darkFillColor,
//     onPrimary: _darkFillColor,
//     onSecondary: _darkFillColor,
//     onSurface: _darkFillColor,
//     brightness: Brightness.dark,
//   );

  // ignore: prefer_const_declarations
  static final _lightColorSchemes = const ColorScheme(
    primary: Color.fromARGB(255, 244, 244, 244),
    onPrimary: Color.fromARGB(255, 87, 87, 87),
    secondary: Color.fromARGB(255, 255, 40, 130),
    onSecondary: Color.fromARGB(255, 250, 250, 250),
    surface: Color.fromARGB(255, 120, 33, 17),
    onSurface: Color.fromARGB(255, 79, 2, 235),
    background: Color.fromARGB(255, 120, 33, 17),
    onBackground: Color.fromARGB(255, 120, 33, 17),
    error: Color.fromARGB(255, 116, 39, 248),
    onError: Color.fromARGB(255, 116, 39, 248),
    brightness: Brightness.light,
  );

  static final _elevatedButtonThemeData = ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return const Color.fromARGB(255, 255, 40, 130);
        }
        if (states.contains(MaterialState.selected)) {
          return const Color.fromARGB(255, 255, 40, 130);
        }
        if (states.contains(MaterialState.hovered)) {
          return const Color.fromARGB(255, 255, 40, 130);
        }
        return null;
        // Defer to the widget's default.
      }),
      foregroundColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return const Color(0xFF1CDEC9);
        }
        if (states.contains(MaterialState.pressed)) {
          return const Color(0xFF1CDEC9);
        }
        return const Color(0xFF1CDEC9);
        // Defer to the widget's default.
      }),
    ),
  );
}
