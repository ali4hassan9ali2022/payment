import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payment_app/Core/Utils/assets.dart';

class PaymentMethodItem extends StatelessWidget {
  const PaymentMethodItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 103,
      height: 62,

      decoration: ShapeDecoration(
        shadows: [
          BoxShadow(
            color: Color(0xff34A853),
            blurRadius: 4,
            offset: Offset(0, 0),
            spreadRadius: 0,
          ),
        ],
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Color(0xff34A853), width: 1.50),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(child: SvgPicture.asset(Assets.imagesCard)),
      ),
    );
  }
}
