import 'package:flutter/material.dart';

class IconWidget {
  static IconData getIcon(String interest) {
    switch (interest) {
      case 'Music':
        return Icons.music_note;
      case 'Activism':
        return Icons.campaign;
      case 'Business':
        return Icons.business;
      case 'Movies & TV':
        return Icons.tv;
      case 'Art & Design':
        return Icons.brush;
      case 'Wine & Dine':
        return Icons.wine_bar;
      default:
        return Icons.help;
    }
  }
}
