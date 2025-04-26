import 'package:flutter/material.dart';
import 'package:payment_app/Core/Helper/app_helper.dart';
import 'package:payment_app/Featured/checkout/Presentation/Views/Widgets/my_card_view_body.dart';

class MyCardView extends StatelessWidget {
  const MyCardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppHelper.buildAppbar(
        title: "My Cart"
      ),
      body: MyCardViewBody(),
    );
  }
}


