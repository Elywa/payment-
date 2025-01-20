import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PaymentMethodIcon extends StatelessWidget {
  const PaymentMethodIcon({super.key, this.isActive = false, required this.image});
  final bool isActive;
  final String image; 
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 400),
      width: MediaQuery.sizeOf(context).width * .3,
      height: MediaQuery.sizeOf(context).height * .1,
      decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 1.5,
              color: isActive ? const Color(0xFF34A853) : Colors.grey,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          shadows: [
            BoxShadow(
              color: isActive ? const Color(0xFF34A853) : Colors.white,
              blurRadius: 4,
              offset: const Offset(0, 0),
              spreadRadius: 0,
            )
          ]),
      child: Container(
        height: MediaQuery.sizeOf(context).height * .1,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: SvgPicture.asset(
          image,
          fit: BoxFit.scaleDown,
        ),
      ),
    );
  }
}
