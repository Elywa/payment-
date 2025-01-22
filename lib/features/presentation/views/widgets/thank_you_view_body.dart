import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:payment_app/core/utils/styles.dart';
import 'package:payment_app/features/presentation/views/widgets/card_info_widget.dart';
import 'package:payment_app/features/presentation/views/widgets/custom_thank_you_item_row.dart';
import 'package:payment_app/features/presentation/views/widgets/custom_total_row.dart';
import 'package:payment_app/features/presentation/views/widgets/dashed_line.dart';

class ThankYouViewBody extends StatelessWidget {
  const ThankYouViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 100, bottom: 40),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          // Main container for the thank-you content
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: const Color(0xFFD9D9D9),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * .09,
                ),
                const Text(
                  "Thank You !",
                  style: Styles.style25,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Your transaction was successful",
                  style: Styles.style20,
                ),
                const SizedBox(
                  height: 42,
                ),
                const CustomThankYouItemRow(title: "Date", price: "01/24/2023"),
                const SizedBox(
                  height: 10,
                ),
                const CustomThankYouItemRow(title: "Time", price: "10:15 AM"),
                const SizedBox(
                  height: 10,
                ),
                const CustomThankYouItemRow(title: "To", price: "Sam Louis"),
                const SizedBox(
                  height: 30,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Divider(
                    thickness: 3,
                    color: Color(0xFFC7C7C7),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 22),
                  child: CustomTotalRow(price: r"$50.97"),
                ),
                const SizedBox(
                  height: 10,
                ),
                const CardInfoWidget(),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Icon(
                      FontAwesomeIcons.barcode,
                      size: 80,
                    ),
                    Container(
                      width: MediaQuery.sizeOf(context).width * .3,
                      height: MediaQuery.sizeOf(context).height * .1,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                          color: Colors.green,
                          width: 2,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "Paid",
                          style: Styles.style22.copyWith(color: Colors.green),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * .16 / 4,
                ),
              ],
            ),
          ),
          // Positioned elements outside the container
          const Positioned(
            right: 0,
            left: 0,
            top: -48,
            child: CircleAvatar(
              radius: 48,
              child: CircleAvatar(
                radius: 40,
                backgroundColor: Colors.green,
                child: Icon(
                  Icons.check,
                  size: 70,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Positioned(
            left: -20,
            bottom: MediaQuery.sizeOf(context).height * .16,
            child: const CircleAvatar(
              radius: 20,
              backgroundColor: Colors.white,
            ),
          ),
          Positioned(
            right: -20,
            bottom: MediaQuery.sizeOf(context).height * .16,
            child: const CircleAvatar(
              radius: 20,
              backgroundColor: Colors.white,
            ),
          ),
          Positioned(
            left: 30,
            right: 30,
            bottom: MediaQuery.sizeOf(context).height * .16 + 20,
            child: const DashedLine(),
          ),
          // Back arrow outside the container
          Positioned(
            top: -60, // Adjusted to position it outside the container
            left: -10,
            child: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
                size: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}




// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:payment_app/core/utils/styles.dart';
// import 'package:payment_app/features/presentation/views/widgets/card_info_widget.dart';
// import 'package:payment_app/features/presentation/views/widgets/custom_thank_you_item_row.dart';
// import 'package:payment_app/features/presentation/views/widgets/custom_total_row.dart';
// import 'package:payment_app/features/presentation/views/widgets/dashed_line.dart';

// class ThankYouViewBody extends StatelessWidget {
//   const ThankYouViewBody({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(left: 20, right: 20, top: 100, bottom: 40),
//       child: Stack(
//         clipBehavior: Clip.none,
//         children: [
//           const Positioned(
//             top: 20,
//             left: 10,
//             child: Icon(
//               Icons.arrow_back,
//               color: Colors.black,
//               size: 50,
//             ),
//           ),
//           Container(
//             width: double.infinity,
//             height: double.infinity,
//             decoration: BoxDecoration(
//               color: const Color(0xFFD9D9D9),
//               borderRadius: BorderRadius.circular(16),
//             ),
//             child: Column(
//               children: [
//                 SizedBox(
//                   height: MediaQuery.sizeOf(context).height * .09,
//                 ),
//                 const Text(
//                   "Thank You !",
//                   style: Styles.style25,
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 Text(
//                   "Your transaction was successful",
//                   style: Styles.style20,
//                 ),
//                 const SizedBox(
//                   height: 42,
//                 ),
//                 const CustomThankYouItemRow(title: "Date", price: "01/24/2023"),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 const CustomThankYouItemRow(title: "Time", price: "010:15 AM"),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 const CustomThankYouItemRow(title: "To", price: "Sam Louis"),
//                 const SizedBox(
//                   height: 30,
//                 ),
//                 const Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 15),
//                   child: Divider(
//                     thickness: 3,
//                     color: Color(0xFFC7C7C7),
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 24,
//                 ),
//                 const Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 22),
//                   child: CustomTotalRow(price: r"$50.97"),
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 const CardInfoWidget(),
//                 const Spacer(),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     const Icon(
//                       FontAwesomeIcons.barcode,
//                       size: 80,
//                     ),
//                     Container(
//                       width: MediaQuery.sizeOf(context).width * .3,
//                       height: MediaQuery.sizeOf(context).height * .1,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(16),
//                         border: Border.all(
//                           color: Colors.green,
//                           width: 2,
//                         ),
//                       ),
//                       child: Center(
//                         child: Text(
//                           "Paid",
//                           style: Styles.style22.copyWith(color: Colors.green),
//                         ),
//                       ),
//                     )
//                   ],
//                 ),
//                 SizedBox(
//                   height: MediaQuery.sizeOf(context).height * .16 / 4,
//                 ),
//               ],
//             ),
//           ),
//           Positioned(
//             left: -20,
//             bottom: MediaQuery.sizeOf(context).height * .16,
//             child: const CircleAvatar(
//               radius: 20,
//               backgroundColor: Colors.white,
//             ),
//           ),
//           Positioned(
//             right: -20,
//             bottom: MediaQuery.sizeOf(context).height * .16,
//             child: const CircleAvatar(
//               radius: 20,
//               backgroundColor: Colors.white,
//             ),
//           ),
//           const Positioned(
//             right: 0,
//             left: 0,
//             top: -48,
//             child: CircleAvatar(
//               radius: 48,
//               child: CircleAvatar(
//                 radius: 40,
//                 backgroundColor: Colors.green,
//                 child: Icon(
//                   Icons.check,
//                   size: 70,
//                   color: Colors.white,
//                 ),
//               ),
//             ),
//           ),
//           Positioned(
//             left: 30,
//             right: 30,
//             bottom: MediaQuery.sizeOf(context).height * .16 + 20,
//             child: const DashedLine(),
//           ),
//         ],
//       ),
//     );
//   }
// }  