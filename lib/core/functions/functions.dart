import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/styles.dart';

AppBar buildCustomAppBar(String title) {
    return AppBar(
      leading: const Icon(
        Icons.arrow_back,
        size: 35,
      ),
      centerTitle: true,
      title: Text(
        title,
        style: Styles.style25,
      ),
    );
  }