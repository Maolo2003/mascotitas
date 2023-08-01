//Se crea la clase AppTheme que contiene el tema de la aplicación
import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF06CBDB);

// Seleccionar los colores de su aplicación NO UTILIZAR LOS COLORES DE EJEMPLO
const List<Color> _colorTheme=[
  _customColor,
  Color(0xFF06CBDB),
  Color(0xFFC20000),
  Color(0xFF9BBFBC),
  Color(0xFFF0F1F2),
  Color(0xFFC20000),
];

class AppTheme{
  final int selectedThemeColor;

  AppTheme({
    this.selectedThemeColor = 0,
  }):assert(selectedThemeColor >= 0 && selectedThemeColor < _colorTheme.length);

  ThemeData theme(){
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorTheme[selectedThemeColor],
      fontFamily: 'Odin Rounded',
      // textTheme define el estilo de los textos
      textTheme: TextTheme(
        bodyLarge: TextStyle(
          color: _colorTheme[selectedThemeColor],
          fontSize: 20,
        ),
      ),
      appBarTheme: AppBarTheme(
        color: _colorTheme[selectedThemeColor],
        foregroundColor: Colors.white,
      ),

    );
  }
}

