import 'package:flutter/material.dart';
import 'package:payment_app/Core/Utils/app_style.dart';

class MyCardView extends StatelessWidget {
  const MyCardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_new_outlined),
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text("My Card", style: AppStyle.style25)),
    );
  }
}
