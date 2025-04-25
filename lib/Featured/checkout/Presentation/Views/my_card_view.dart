import 'package:flutter/material.dart';

class MyCardView extends StatelessWidget {
  const MyCardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Card",
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontFamily: "Inter",
            fontWeight: FontWeight.w500,
            height: 0,
          ),
        ),
      ),
    );
  }
}
