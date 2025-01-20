import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:payment_app/core/utils/styles.dart';
import 'package:payment_app/features/presentation/views/payment_details_view.dart';
import 'package:payment_app/features/presentation/views/widgets/custom_payment_button.dart';
import 'package:payment_app/features/presentation/views/widgets/custom_row.dart';
import 'package:payment_app/features/presentation/views/widgets/custom_total_row.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            Expanded(child: Image.asset("assets/images/cart_image.png")),
            const SizedBox(
              height: 20,
            ),
            const CustomRow(
              title: "Order Subtotal",
              price: r"$42.97",
            ),
            const SizedBox(
              height: 3,
            ),
            const CustomRow(
              title: "Discount",
              price: r"$0",
            ),
            const SizedBox(
              height: 3,
            ),
            const CustomRow(
              title: "Shipping",
              price: r"8",
            ),
            const SizedBox(
              height: 17,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Divider(
                thickness: 2,
                color: Color(0xffC7C7C7),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const CustomTotalRow(
              price: r"$50.97",
            ),
            const SizedBox(
              height: 16,
            ),
            CustomPaymentButton(
              title: "Complete Payment",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const PaymentDetailsView();
                    },
                  ),
                );
              },
            ),
            const SizedBox(
              height: 12,
            ),
          ],
        ),
      ),
    );
  }
}
