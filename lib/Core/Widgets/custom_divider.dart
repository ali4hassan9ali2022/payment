import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key, this.thickness, this.color, this.height});
  final double? thickness;
  final Color? color;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return Divider(height: height, color: color, thickness: thickness);
  }
}
