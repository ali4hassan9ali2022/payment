import 'package:flutter/material.dart';
import 'package:payment_app/Core/Utils/app_style.dart';

class OrderInfoItem extends StatelessWidget {
  const OrderInfoItem({super.key, required this.title, required this.value});
final String title, value;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: AppStyle.style18,
        ),
        Spacer(),
        Text(
        value,
          style: AppStyle.style18,
        ),
      ],
    );
  }
}