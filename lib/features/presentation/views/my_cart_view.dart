import 'package:flutter/material.dart';
import 'package:payment_app/core/functions/functions.dart';
import 'package:payment_app/core/utils/styles.dart';
import 'package:payment_app/features/presentation/views/widgets/my_cart_view_body.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildCustomAppBar(title: "My Cart"),
      body: const MyCartViewBody(),
    );
  }
}
