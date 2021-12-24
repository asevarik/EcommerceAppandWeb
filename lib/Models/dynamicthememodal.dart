import 'package:flutter/material.dart';

class DynamicThememodal {
  final IconData icon;
  final String themetitle;

  DynamicThememodal(this.icon, this.themetitle);
}

List<DynamicThememodal> themes = [
  DynamicThememodal(Icons.ac_unit, "Dora the Explora"),
  DynamicThememodal(Icons.three_p, "Ambient Grey"),
  // DynamicThememodal(Icons.fireplace, "Flaming Fire"),
  DynamicThememodal(Icons.person, "Enviormental Green"),
];
