import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/styles.dart';

class CustomTotalRow extends StatelessWidget {
  const CustomTotalRow({
    super.key,
    required this.price,
  });
  final String price;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "Total",
          style: Styles.style25,
        ),
        Text(
          price,
          style: Styles.style25,
        )
      ],
    );
  }
}
