import 'package:flutter/material.dart';
import 'package:payment_app/Core/Utils/app_style.dart';
import 'package:payment_app/Core/Widgets/custom_button.dart';
import 'package:payment_app/Featured/checkout/Presentation/Views/Widgets/payment_methods_list_view.dart';

class PaymentMethodsBottomSheet extends StatelessWidget {
  const PaymentMethodsBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 16),
          PaymentMethodsListView(),
          SizedBox(height: 32),
          CustomButton(
            borderRadius: 15,
            color: Color(0xff34a853),
            width: double.infinity,
            height: 73,
            onTap: () {},
            child: Center(child: Text("Continue", style: AppStyle.style22)),
          ),
        ],
      ),
    );
  }
}
