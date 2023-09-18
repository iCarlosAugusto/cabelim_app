// import 'package:flutter/material.dart';
// import 'package:saude_club/common/widgets/button_widget.dart';
// import 'package:saude_club/common/widgets/text_widget.dart';

// class CardConsultInfo extends StatelessWidget {
//   const CardConsultInfo({super.key, required this.onTap, required this.name, required this.description, required this.bannerImage});

//   final void Function() onTap;
//   final String name;
//   final String description;
//   final String bannerImage; 

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: onTap,
//       child: Container(
//         padding: const EdgeInsets.all(16),
//         decoration: const BoxDecoration(
//             image: DecorationImage(
//                 image: AssetImage('images/academia.jpg'),
//                 fit: BoxFit.cover),
//             borderRadius: BorderRadius.all(Radius.circular(16))),
//         child: Column(
//           mainAxisSize: MainAxisSize.max,
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     TextWidget(name,
//                         isFontWeight: true, color: Colors.white),
//                     TextWidget(
//                       description,
//                       fontSize: AvailableFontSizes.small,
//                       color: Colors.orange,
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//             Container(
//               margin: const EdgeInsets.only(top: 42),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   ButtonWidget(
//                     title: 'Detalhes',
//                     onTap: onTap,
//                     icon: Icons.add,
//                     color: Colors.orange,
//                   ),
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
