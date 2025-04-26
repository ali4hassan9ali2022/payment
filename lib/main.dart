import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment_app/Featured/checkout/Cubit/app_cubit.dart';
import 'package:payment_app/Featured/checkout/Presentation/Views/my_card_view.dart';

void main() {
  runApp(const CheckOutApp());
}

class CheckOutApp extends StatelessWidget {
  const CheckOutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit(),
      child: MaterialApp(debugShowCheckedModeBanner: false, home: MyCardView()),
    );
  }
}
