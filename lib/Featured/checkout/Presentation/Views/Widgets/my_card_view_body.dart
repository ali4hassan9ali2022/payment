import 'package:flutter/material.dart';
import 'package:payment_app/Core/Utils/assets.dart';

class MyCardViewBody extends StatelessWidget {
  const MyCardViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [SizedBox(height: 18), Image.asset(Assets.imagesBasketImage)],
    );
  }
}
