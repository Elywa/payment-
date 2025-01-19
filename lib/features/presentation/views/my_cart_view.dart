import 'package:flutter/material.dart';
import 'package:payment_app/core/functions/functions.dart';
import 'package:payment_app/core/utils/styles.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildCustomAppBar("My Cart"),
    );
  }
}
