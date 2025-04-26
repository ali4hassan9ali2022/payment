import 'package:flutter/material.dart';
import 'package:payment_app/Featured/checkout/Presentation/Views/Widgets/payment_methods_list_view.dart';

class PaymentDetailsViewBody extends StatelessWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [PaymentMethodsListView()]);
  }
}
