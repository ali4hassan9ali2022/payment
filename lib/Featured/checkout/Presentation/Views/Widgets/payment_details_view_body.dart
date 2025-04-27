import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment_app/Core/Utils/app_style.dart';
import 'package:payment_app/Core/Widgets/custom_button.dart';
import 'package:payment_app/Featured/checkout/Cubit/app_cubit.dart';
import 'package:payment_app/Featured/checkout/Cubit/app_state.dart';
import 'package:payment_app/Featured/checkout/Presentation/Views/Widgets/custom_credit_card.dart';
import 'package:payment_app/Featured/checkout/Presentation/Views/Widgets/payment_methods_list_view.dart';
import 'package:payment_app/Featured/checkout/Presentation/Views/thank_you_view.dart';

class PaymentDetailsViewBody extends StatefulWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  State<PaymentDetailsViewBody> createState() => _PaymentDetailsViewBodyState();
}

class _PaymentDetailsViewBodyState extends State<PaymentDetailsViewBody> {
  @override
  Widget build(BuildContext context) {
    var cubit = BlocProvider.of<AppCubit>(context);
    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {},
      builder: (context, state) {
        return CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: PaymentMethodsListView()),
            SliverToBoxAdapter(child: CustomCreditCard()),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(
                    bottom: 12,
                    left: 16,
                    right: 16,
                  ),
                  child: CustomButton(
                    borderRadius: 15,
                    color: Color(0xff34a853),
                    width: double.infinity,
                    height: 73,
                    onTap: () {
                      if (cubit.formKey.currentState!.validate()) {
                        cubit.formKey.currentState!.save();
                      } else {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => ThankYouView(),
                          ),
                        );
                        cubit.autovalidateMode = AutovalidateMode.always;
                        setState(() {});
                      }
                    },
                    child: Center(child: Text("Play", style: AppStyle.style22)),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
