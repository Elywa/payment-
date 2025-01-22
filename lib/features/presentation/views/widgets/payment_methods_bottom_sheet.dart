import 'package:flutter/material.dart';
import 'package:payment_app/features/presentation/views/widgets/custom_payment_button.dart';
import 'package:payment_app/features/presentation/views/widgets/payment_methods_list_view.dart';

class PaymentMethodsBottomSheet extends StatelessWidget {
  const PaymentMethodsBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 20,
          ),
          PaymentMethodsListView(),
          SizedBox(
            height: 20,
          ),
          CustomPaymentButton(title: "Continue"),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
