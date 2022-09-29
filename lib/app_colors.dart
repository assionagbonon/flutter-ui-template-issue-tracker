import 'package:flutter/material.dart';

class MyColors {

  static const MaterialColor primary = MaterialColor(
    0xFFE6B3FF,
    <int, Color>{
      50: Color.fromRGBO(255, 221, 151, .1),
      100: Color.fromRGBO(255, 221, 151, 0.2),
      400: Color.fromRGBO(255, 221, 151, 0.5),
      800: Color.fromRGBO(255, 221, 151, .9),
      900: Color.fromRGBO(255, 221, 151, 1.0),
    },
  );

  static const MaterialColor primaryLight = MaterialColor(
    0x2C2922,
    <int, Color>{
      50: Color.fromRGBO(44, 41, 34, .1),
      100: Color.fromRGBO(44, 41, 34, .2),
      400: Color.fromRGBO(44, 41, 34, 0.5),
      800: Color.fromRGBO(44, 41, 34, .9),
      900: Color.fromRGBO(44, 41, 34, 1.0),
    },
  );

  static const MaterialColor grey = MaterialColor(
    0xFFE2E7EA,
    <int, Color>{
      50: Color.fromRGBO(109, 120, 126, .1),
      100: Color.fromRGBO(109, 120, 126, .2),
      600: Color.fromRGBO(109, 120, 126, 0.7),
      700: Color.fromRGBO(109, 120, 126, .8),
      800: Color.fromRGBO(109, 120, 126, .9),
      900: Color.fromRGBO(109, 120, 126, 1.0),
    },
  );




}