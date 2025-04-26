import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.child,
    required this.borderRadius,
    required this.color,
    required this.width,
    required this.height,
    required this.onTap,
  });
  final Widget child;
  final double borderRadius;
  final double width;
  final double height;
  final Color color;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          color: color,
        ),
        child: child,
      ),
    );
  }
}
