import 'package:flutter/material.dart';
import 'package:payment_app/Core/Utils/app_style.dart';
import 'package:payment_app/Core/Utils/assets.dart';
import 'package:payment_app/Core/Widgets/custom_button.dart';
import 'package:payment_app/Core/Widgets/custom_divider.dart';
import 'package:payment_app/Featured/checkout/Presentation/Views/Widgets/order_info_item.dart';
import 'package:payment_app/Featured/checkout/Presentation/Views/Widgets/total_price.dart';

class MyCardViewBody extends StatelessWidget {
  const MyCardViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(height: 18),
          //! image card
          Expanded(child: Image.asset(Assets.imagesBasketImage)),
          SizedBox(height: 25),
          //! Order Info
          OrderInfoItem(title: "Order Subtotal", value: r"$42.97"),
          SizedBox(height: 3),
          OrderInfoItem(title: "Discount", value: r"$0"),
          SizedBox(height: 3),
          OrderInfoItem(title: "Shipping", value: r"$8"),
          //! Divider
          CustomDivider(color: Color(0xffc6c6c6), thickness: 2, height: 34),
          //! Total Price
          TotalPrice(title: "Total", value: r"$50.97"),
          SizedBox(height: 16),
          //! Button
          CustomButton(
            onTap: () {},
            borderRadius: 15,
            color: Color(0xff34a853),
            width: double.infinity,
            height: 73,
            child: Center(
              child: Text("Complete Payment", style: AppStyle.style22),
            ),
          ),
          SizedBox(height: 12),
        ],
      ),
    );
  }
}
