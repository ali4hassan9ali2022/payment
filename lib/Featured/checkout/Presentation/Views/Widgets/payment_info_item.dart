import 'package:flutter/material.dart';
import 'package:payment_app/Core/Utils/app_style.dart';

class PaymentInfoItem extends StatelessWidget {
  const PaymentInfoItem({super.key, required this.title, required this.value});
  final String title;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: AppStyle.style18),
        Text(value, style: AppStyle.styleBold18),
      ],
    );
  }
}
