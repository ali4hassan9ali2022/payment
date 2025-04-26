import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment_app/Core/Helper/app_helper.dart';
import 'package:payment_app/Featured/checkout/Cubit/app_cubit.dart';
import 'package:payment_app/Featured/checkout/Cubit/app_state.dart';
import 'package:payment_app/Featured/checkout/Presentation/Views/Widgets/payment_method_item.dart';

class PaymentMethodsListView extends StatelessWidget {
  const PaymentMethodsListView({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = BlocProvider.of<AppCubit>(context);
    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return SizedBox(
          height: 62,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: AppHelper.paymentMethodsItem.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: GestureDetector(
                  onTap: () {
                    cubit.changeStatus(index);
                  },
                  child: PaymentMethodItem(
                    isAvtive: cubit.currentIndex == index,
                    image: AppHelper.paymentMethodsItem[index],
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
