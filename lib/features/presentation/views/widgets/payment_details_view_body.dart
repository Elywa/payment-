import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:payment_app/features/presentation/views/thank_you_view.dart';
import 'package:payment_app/features/presentation/views/widgets/custom_credit_card.dart';
import 'package:payment_app/features/presentation/views/widgets/custom_payment_button.dart';
import 'package:payment_app/features/presentation/views/widgets/payment_method_item.dart';
import 'package:payment_app/features/presentation/views/widgets/payment_methods_list_view.dart';

class PaymentDetailsViewBody extends StatefulWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  State<PaymentDetailsViewBody> createState() => _PaymentDetailsViewBodyState();
}

class _PaymentDetailsViewBodyState extends State<PaymentDetailsViewBody> {
  GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: [
      const SliverToBoxAdapter(
        child: SizedBox(
          height: 20,
        ),
      ),
      const SliverToBoxAdapter(
        child: PaymentMethodsListView(),
      ),
      SliverToBoxAdapter(
        child: CustomCreditCard(
          autovalidateMode: autovalidateMode,
          formKey: formKey,
        ),
      ),
      SliverFillRemaining(
        hasScrollBody: false,
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: CustomPaymentButton(
              onTap: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                } else {
                  autovalidateMode = AutovalidateMode.always;
                  setState(() {});
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const ThankYouView();
                      },
                    ),
                  );
                }
              },
              title: "Pay",
            ),
          ),
        ),
      ),
    ]);
  }
}
