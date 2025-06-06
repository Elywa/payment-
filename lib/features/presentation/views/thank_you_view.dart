import 'package:flutter/material.dart';
import 'package:payment_app/core/functions/functions.dart';
import 'package:payment_app/features/presentation/views/widgets/thank_you_view_body.dart';

class ThankYouView extends StatelessWidget {
  const ThankYouView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ThankYouViewBody(),
    );
  }
}
