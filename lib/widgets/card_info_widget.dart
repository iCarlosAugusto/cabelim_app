// import 'package:flutter/material.dart';

// import 'package:saude_club/common/widgets/text_widget.dart';

// class CardInfoWidget extends StatelessWidget {
//   CardInfoWidget({super.key, required this.title, required this.total, this.onTap, this.isSelected = false});

//   final String title;
//   final int total;
//   final Function()? onTap;
//   bool isSelected = false; 

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: onTap,
//       child: Card(
//         elevation: 2,
//         color: isSelected ? Colors.blue[600] : Colors.white,
//         margin: const EdgeInsets.only(top: 80, left: 16),
//         child: Container(
//           constraints: const BoxConstraints(
//             minWidth: 145,
//             minHeight: 110
//           ),
//           padding: const EdgeInsets.only(
//               bottom: 32, top: 32, left: 16, right: 16),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               TextWidget(
//                 title,
//                 fontSize: AvailableFontSizes.small,
//                 color: isSelected ? Colors.white :Colors.grey
//               ),
//               TextWidget(
//                 total.toString(),
//                 isFontWeight: true,
//                 color: isSelected ? Colors.white : Colors.black
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }