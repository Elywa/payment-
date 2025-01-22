import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/styles.dart';

class CustomThankYouItemRow extends StatelessWidget {
  const CustomThankYouItemRow(
      {super.key, required this.title, required this.price});
  final String title;
  final String price;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Styles.style20,
          ),
          Text(
            price,
            style: Styles.style22,
          ),
        ],
      ),
    );
  }
}
