import 'package:flutter/material.dart';
import 'package:payment_app/Core/Utils/assets.dart';
import 'package:payment_app/Featured/checkout/Presentation/Views/Widgets/order_info_item.dart';

class MyCardViewBody extends StatelessWidget {
  const MyCardViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(height: 18),
          Image.asset(Assets.imagesBasketImage),
          SizedBox(height: 25),
          OrderInfoItem(title: "Order Subtotal", value: r"$42.97"),
          SizedBox(height: 3),
          OrderInfoItem(title: "Discount", value: r"$0"),
          SizedBox(height: 3),
          OrderInfoItem(title: "Shipping", value: r"$8"),
        ],
      ),
    );
  }
}
