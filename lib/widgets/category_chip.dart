import 'package:flutter/material.dart';

class CategoryChip extends StatelessWidget {
  final String label;
  final IconData? icon;

  const CategoryChip({Key? key, required this.label, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Chip(
      avatar: icon != null ? Icon(icon, size: 16, color: Colors.white) : null,
      label: Text(label),
      backgroundColor: Colors.blue[300],
      labelStyle: TextStyle(color: Colors.white),
      padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
    );
  }
}
