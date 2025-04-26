import 'package:flutter/material.dart';
import 'package:payment_app/Core/Utils/app_style.dart';

class TotalPrice extends StatelessWidget {
  const TotalPrice({super.key, required this.title, required this.value});
  final String title, value;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title, style: AppStyle.style24),
        Spacer(),
        Text(value, style: AppStyle.style24),
      ],
    );
  }
}
