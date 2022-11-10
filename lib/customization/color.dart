import 'package:flutter/material.dart';

MaterialStateProperty<Color> useColor(Color color, Color colorPressed) {
  useColor(Set<MaterialState> states) {
    if (states.contains(MaterialState.pressed)) {
      return colorPressed;
    } else {
      return color;
    }
  }

  return MaterialStateProperty.resolveWith(useColor);
}
