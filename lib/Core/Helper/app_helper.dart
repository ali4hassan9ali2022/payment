import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payment_app/Core/Utils/app_style.dart';
import 'package:payment_app/Core/Utils/assets.dart';
import 'package:payment_app/Featured/checkout/Cubit/app_cubit.dart';

abstract class AppHelper {
  static AppBar buildAppbar({required final String title}) {
    return AppBar(
      centerTitle: true,
      leading: Center(child: SvgPicture.asset(Assets.imagesArrow)),
      elevation: 0,
      backgroundColor: Colors.transparent,
      title: Text(title, style: AppStyle.style25),
    );
  }

  static List<String> paymentMethodsItem = [
    Assets.imagesCard,
    Assets.imagesPaypal,
  ];
  static String cardNumber = '';
  static String expiryDate = '';
  static String cardHolderName = '';
  static String cvvCode = '';
  static bool showBackView = false;
}
