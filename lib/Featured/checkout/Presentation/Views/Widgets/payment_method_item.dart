import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PaymentMethodItem extends StatelessWidget {
  const PaymentMethodItem({
    super.key,
    required this.isAvtive,
    required this.image,
  });
  final bool isAvtive;
  final String image;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      width: 103,
      height: 62,

      decoration: ShapeDecoration(
        shadows: [
          BoxShadow(
            color: isAvtive ? Color(0xff34A853) : Color(0xffAFAFAF),
            blurRadius: 4,
            offset: Offset(0, 0),
            spreadRadius: 0,
          ),
        ],
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: isAvtive ? Color(0xff34A853) : Color(0xffAFAFAF),
            width: 1.50,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(child: SvgPicture.asset(image)),
      ),
    );
  }
}
