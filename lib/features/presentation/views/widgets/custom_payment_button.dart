import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/styles.dart';

class CustomPaymentButton extends StatelessWidget {
  const CustomPaymentButton({
    super.key,
    this.onTap,
    required this.title,
  });
  final String title;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: MediaQuery.sizeOf(context).height * .09,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color(0xFF34A853),
        ),
        child: Center(
          child: Text(
            title,
            style: Styles.style24,
          ),
        ),
      ),
    );
  }
}
