import 'package:flutter/material.dart';
import 'package:payment_app/core/functions/functions.dart';
import 'package:payment_app/features/presentation/views/widgets/payment_details_view_body.dart';

class PaymentDetailsView extends StatelessWidget {
  const PaymentDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: buildCustomAppBar('Payment Details'),
        body: const PaymentDetailsViewBody(),
      ),
    );
  }
}
