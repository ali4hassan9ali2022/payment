import 'package:flutter/material.dart';
import 'package:payment_app/Core/Helper/app_helper.dart';
import 'package:payment_app/Featured/checkout/Presentation/Views/Widgets/payment_details_view_body.dart';

class PaymentDetailsView extends StatelessWidget {
  const PaymentDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppHelper.buildAppbar(title: "Payment Details"),
      body: PaymentDetailsViewBody(),
    );
  }
}
