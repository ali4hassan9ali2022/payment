import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:payment_app/Core/Helper/app_helper.dart';
import 'package:payment_app/Featured/checkout/Cubit/app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() :super(InitialAppState());

GlobalKey<FormState> formKey = GlobalKey();
  int currentIndex = 0;
  void changeStatus(int index) {
    currentIndex = index;
    emit(ChangeStatusAppState());
  } 
  void changeStatusForm(CreditCardModel value) {
    AppHelper.cardNumber = value.cardNumber;
            AppHelper.expiryDate = value.expiryDate;
            AppHelper.cardHolderName = value.cardHolderName;
            AppHelper.cvvCode = value.cvvCode;
            AppHelper.showBackView = value.isCvvFocused;

            emit(ChangeStatusFormAppState());
  }
}