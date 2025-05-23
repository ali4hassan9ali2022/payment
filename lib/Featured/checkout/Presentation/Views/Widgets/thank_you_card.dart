import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:payment_app/Core/Utils/app_style.dart';

import 'package:payment_app/Featured/checkout/Presentation/Views/Widgets/card_info_widget.dart';
import 'package:payment_app/Featured/checkout/Presentation/Views/Widgets/payment_info_item.dart';
import 'package:payment_app/Featured/checkout/Presentation/Views/Widgets/total_price.dart';

class ThankYouCard extends StatelessWidget {
  const ThankYouCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: ShapeDecoration(
        color: Color(0xffededed),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 50 + 16, left: 22, right: 22),
        child: Column(
          children: [
            Text("Thank you!", style: AppStyle.style25),
            Text("Your transaction was successful", style: AppStyle.style20),
            SizedBox(height: 42),
            PaymentInfoItem(title: "Date", value: "01/24/2023"),
            SizedBox(height: 20),
            PaymentInfoItem(title: "Time", value: "10:15 AM"),
            SizedBox(height: 20),
            PaymentInfoItem(title: "To", value: "Sam Louis"),
            Divider(thickness: 2, height: 60),
            TotalPrice(title: "Total", value: r"$50.97"),
            SizedBox(height: 30),
            CardInfoWidget(),
            Expanded(child: SizedBox()),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(FontAwesomeIcons.barcode, size: 65),
                Container(
                  width: 113,
                  height: 58,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1.50, color: Color(0xff34a853)),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "PAID",
                      style: AppStyle.style24.copyWith(
                        color: Color(0xff34A853),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: ((MediaQuery.sizeOf(context).height * .2 + 20) / 2) - 29,
            ),
          ],
        ),
      ),
    );
  }
}
