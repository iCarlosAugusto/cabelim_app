// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class ModalOption {

//   ModalOption({required this.icon, required this.onTap});

//   final IconData icon;
//   final Function() onTap;
// }

// class ModalBottomSheetWidget {

//   ModalBottomSheetWidget({required this.options});

//   final List<ModalOption> options; 

//   void show () {
//     showModalBottomSheet<void>(
//       context: Get.context!,
//       builder: (BuildContext context) {
//         return Container(
//           height: 190,
//           padding: const EdgeInsets.all(16),
//           decoration: const BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.only(
//               topLeft: Radius.circular(16),
//               topRight: Radius.circular(16)
//             ),
//           ),
//           child: Column(
//             children: <Widget>[
//               Container(
//                 width: 100,
//                 height: 5,
//                 decoration: const BoxDecoration(
//                   color: Colors.black,
//                   borderRadius: BorderRadius.horizontal(left: Radius.circular(10), right: Radius.circular(10))
//                 ),
//               ),
//               Expanded(
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: 
//                     options.map((ModalOption option) => InkWell(
//                       onTap: option.onTap,
//                       child: Container(
//                         decoration: const BoxDecoration(
//                           borderRadius: BorderRadius.all(Radius.circular(10)),
//                           color: Colors.grey,
//                         ),
//                         padding: const EdgeInsets.all(32),
//                         child: Icon(option.icon, color: Colors.white),
//                       ),
//                     )).toList(),
//                 ),
//               )
//             ],
//           ),
//         );
//       },
//     );
//   }
// }