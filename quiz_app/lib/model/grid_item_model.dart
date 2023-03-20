import 'dart:ui';

class GridItemModel {
  final String name, asset;
  final VoidCallback onPressed;

  GridItemModel({required this.name, required this.asset, required this.onPressed});
}
