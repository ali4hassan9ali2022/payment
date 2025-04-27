import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:payment_app/Core/Helper/app_helper.dart';
import 'package:payment_app/Featured/checkout/Cubit/app_cubit.dart';

class CustomCreditCard extends StatelessWidget {
  const CustomCreditCard({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = BlocProvider.of<AppCubit>(context);
    return Column(
      children: [
        CreditCardWidget(
          isHolderNameVisible: true,
          cardNumber: AppHelper.cardNumber,
          expiryDate: AppHelper.expiryDate,
          cardHolderName: AppHelper.cardHolderName,
          cvvCode: AppHelper.cvvCode,
          showBackView: AppHelper.showBackView,
          onCreditCardWidgetChange: (value) {},
        ),
        CreditCardForm(
          cardNumber: AppHelper.cardNumber,
          expiryDate: AppHelper.expiryDate,
          cardHolderName: AppHelper.cardHolderName,
          cvvCode: AppHelper.cvvCode,
          formKey: cubit.formKey,
          onCreditCardModelChange: (value) {
            cubit.changeStatusForm(value);
          },
        ),
      ],
    );
  }
}
