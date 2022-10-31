import 'package:flutter/material.dart' show Widget, IconData;

class MenuOptions {
  final String route;
  final String name;
  final Widget screen;
  final IconData icon;

  MenuOptions(
      {required this.route,
      required this.name,
      required this.screen,
      required this.icon});
}
