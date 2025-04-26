import 'package:flutter/material.dart';
import 'package:payment_app/Core/Helper/app_helper.dart';
import 'package:payment_app/Featured/checkout/Presentation/Views/Widgets/payment_method_item.dart';

class PaymentMethodsListView extends StatelessWidget {
  const PaymentMethodsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: AppHelper.paymentMethodsItem.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: PaymentMethodItem(
              isAvtive: false,
              image: AppHelper.paymentMethodsItem[index],
            ),
          );
        },
      ),
    );
  }
}
