import 'package:flutter/material.dart';
import 'package:payment_app/Core/Helper/app_helper.dart';
import 'package:payment_app/Featured/checkout/Presentation/Views/Widgets/thank_you_view_body.dart';

class ThankYouView extends StatelessWidget {
  const ThankYouView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppHelper.buildAppbar(),
      body: Transform.translate(
        offset: Offset(0, -16),
        child: ThankYouViewBody(),
      ),
    );
  }
}
