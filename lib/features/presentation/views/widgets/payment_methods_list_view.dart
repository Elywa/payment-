import 'package:flutter/material.dart';
import 'package:payment_app/features/presentation/views/widgets/payment_method_item.dart';

class PaymentMethodsListView extends StatefulWidget {
  const PaymentMethodsListView({super.key});

  @override
  State<PaymentMethodsListView> createState() => _PaymentMethodsListViewState();
}

class _PaymentMethodsListViewState extends State<PaymentMethodsListView> {
  final List<String> iconsImages = const [
    "assets/images/card_image.svg",
    "assets/images/pay_pal_image.svg"
  ];

  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * .1,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: iconsImages.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GestureDetector(
                onTap: () {
                  activeIndex = index;
                  setState(() {});
                },
                child: PaymentMethodIcon(
                  image: iconsImages[index],
                  isActive: activeIndex == index,
                ),
              ),
            );
          }),
    );
  }
}
