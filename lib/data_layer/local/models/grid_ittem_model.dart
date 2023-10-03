import 'package:flutter/material.dart';

class GridItemModel {
  final String title;
  final IconData icon;
  final String route;
  final int id;

  GridItemModel(
      {required this.title,
      required this.icon,
      required this.route,
      required this.id});
}
