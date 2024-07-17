// import "package:auto_route/annotations.dart";
// import "package:flutter/material.dart";
// import "package:learning_app/colors/my_color.dart";
// import "package:learning_app/k_widgets/k_textformfield.dart";
// import "package:learning_app/styles/text_style.dart";

// // @RoutePage()
// // class CategoryFiveScreen extends StatefulWidget {
// //   const CategoryFiveScreen({super.key});

// //   @override
// //   State<CategoryFiveScreen> createState() => _MyWidgetState();
// // }

// // class _MyWidgetState extends State<CategoryFiveScreen> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       drawer: const Drawer(),
// //       appBar: AppBar(
// //         title: const Text("SAMOHAL", style: KTextStyle.K_20),
// //         centerTitle: true,
// //         actions: const [
// //           Padding(
// //             padding: EdgeInsets.only(right: 18.0),
// //             child: CircleAvatar(
// //               backgroundImage: AssetImage("assets/images/png/profile.png"),
// //             ),
// //           ),
// //         ],
// //         backgroundColor: MyColor.yellow.withOpacity(0.2),
// //       ),
// //       body: Column(
// //         children: [
// //           Expanded(
// //               flex: 7,
// //               child: Container(
// //                 color: Colors.cyan,
// //               )),
// //           Expanded(
// //               flex: 1,
// //               child: Container(

// //                 color: Colors.pink,
// //                 child: Row(
// //                   children: [
// //                     // CircleAvatar(
// //                     //   backgroundImage:
// //                     //       AssetImage("assets/images/png/profile2.png"),
// //                     //   radius: 30,
// //                     // ),
// //                     TextField(
// //                       decoration: InputDecoration(
// //                           border: OutlineInputBorder(
// //                               borderRadius: BorderRadius.circular(20))),
// //                     )
// //                   ],
// //                 ),
// //               )),
// //         ],
// //       ),
// //     );
// //   }
// // }

// @RoutePage()
// class CategoryFiveScreen extends StatefulWidget {
//   const CategoryFiveScreen({super.key});

//   @override
//   State<CategoryFiveScreen> createState() => _CategoryFiveScreenState();
// }

// class _CategoryFiveScreenState extends State<CategoryFiveScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       drawer: const Drawer(),
//       appBar: AppBar(
//         title: const Text(
//           "SAMOHAL",
//         ),
//         centerTitle: true,
//         actions: const [
//           Padding(
//             padding: EdgeInsets.only(right: 18.0),
//             child: CircleAvatar(
//               backgroundImage: AssetImage("assets/images/png/profile.png"),
//             ),
//           ),
//         ],
//         backgroundColor: MyColor.yellow.withOpacity(0.2),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             flex: 8,
//             child: Container(
//               color: Colors.cyan,
//             ),
//           ),
//           Expanded(
//             flex: 1,
//             child: Container(
//               color: const Color.fromARGB(255, 255, 250, 252),
//               child: Row(
//                 children: [
//                   // Image(
//                   //   image: AssetImage("assets/images/png/profile2.png"),
//                   // ),
//                   TextFormField(
                    
//                     decoration: InputDecoration(
//                       border: OutlineInputBorder(
//                         borderSide: BorderSide(color: Colors.black),
//                         borderRadius: BorderRadius.circular(40),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
