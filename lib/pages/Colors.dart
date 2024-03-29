import 'package:flutter/material.dart';

const MaterialColor primary = MaterialColor(_primaryPrimaryValue, <int, Color>{
  50: Color(0xFF663DE4),
  100: Color(0xFFC5CAE9),
  200: Color(0xFF9FA8DA),
  300: Color(0xFF7986CB),
  400: Color(0xFF5C6BC0),
  500: Color(_primaryPrimaryValue),
  600: Color(0xFF3949AB),
  700: Color(0xFF303F9F),
  800: Color(0xFF283593),
  900: Color(0xFF1A237E),
});
const int _primaryPrimaryValue = 0xFF663DE4;

const MaterialColor primaryAccent = MaterialColor(_primaryAccentValue, <int, Color>{
  100: Color(0xFF8C9EFF),
  200: Color(_primaryAccentValue),
  400: Color(0xFF3D5AFE),
  700: Color(0xFF304FFE),
});
 const int _primaryAccentValue = 0xFF536DFE;