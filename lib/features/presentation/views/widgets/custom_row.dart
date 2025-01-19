import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/styles.dart';

class CustomRow extends StatelessWidget {
  const CustomRow({
    super.key,
    required this.title,
    required this.price,
  });
  final String title, price;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Styles.style20,
        ),
        Text(
          price,
          style: Styles.style20,
        )
      ],
    );
  }
}
