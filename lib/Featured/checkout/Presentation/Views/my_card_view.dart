import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:payment_app/Core/Utils/app_style.dart';
import 'package:payment_app/Core/Utils/assets.dart';
import 'package:payment_app/Featured/checkout/Presentation/Views/Widgets/my_card_view_body.dart';

class MyCardView extends StatelessWidget {
  const MyCardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Center(child: SvgPicture.asset(Assets.imagesArrow)),
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text("My Card", style: AppStyle.style25),
      ),
      body: MyCardViewBody(),
    );
  }
}
