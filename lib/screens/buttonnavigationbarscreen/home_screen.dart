// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:hexcolor/hexcolor.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});
//   static const routeName = "/homescreen";

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color.fromARGB(255, 240, 237, 237),
//       body: SafeArea(
//         child: Stack(
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Container(
//                   padding: const EdgeInsets.only(top: 20),
//                   child: const Text(
//                     "Explore",
//                     style: TextStyle(
//                       fontSize: 40,
//                       fontWeight: FontWeight.w600,
//                     ),
//                     textAlign: TextAlign.center,
//                   ),
//                 ),
//               ],
//             ),
//             Container(
//               padding: const EdgeInsets.only(left: 330, top: 25),
//               child: SizedBox(
//                 height: 50,
//                 width: 40,
//                 child: FloatingActionButton(
//                   onPressed: () {
//                     Navigator.pushNamed(context, "/addtocart");
//                   },
//                   backgroundColor: const Color.fromARGB(255, 255, 255, 255),
//                   shape: const CircleBorder(),
//                   elevation: 0.1,
//                   child: SvgPicture.asset(
//                     "assets/images/carticon.svg",
//                     color: Colors.black,
//                   ),
//                 ),
//               ),
//             ),
//             Container(
//                 padding: const EdgeInsets.only(top: 15, left: 105),
//                 child: Image.asset(
//                   "assets/images/Highlight_05.png",
//                   color: Colors.black,
//                 )),
//             Container(
//               padding: const EdgeInsets.only(top: 20, left: 10),
//               child: IconButton(
//                   onPressed: () {},
//                   icon: SvgPicture.asset("assets/images/sidebutton.svg")),
//             ),
//             Container(
//               padding: const EdgeInsets.only(top: 80, left: 29, right: 80),
//               child: TextFormField(
//                 decoration: InputDecoration(
//                     fillColor: const Color.fromARGB(255, 255, 252, 252),
//                     filled: true,
//                     prefixIcon: const Icon(Icons.search),
//                     hintText: "Looking for Shoes",
//                     border: OutlineInputBorder(
//                         borderSide: BorderSide.none,
//                         gapPadding: 10,
//                         borderRadius: BorderRadius.circular(12))),
//                 keyboardType: TextInputType.text,
//               ),
//             ),
//             Container(
//               padding: const EdgeInsets.only(left: 330, top: 85),
//               child: SizedBox(
//                 height: 50,
//                 width: 50,
//                 child: FloatingActionButton(
//                   onPressed: () {},
//                   backgroundColor: HexColor("#5B9EE1"),
//                   shape: const CircleBorder(),
//                   elevation: 0.1,
//                   child: SvgPicture.asset(
//                     "assets/images/slider.svg",
//                     color: Colors.black,
//                   ),
//                 ),
//               ),
//             ),
//             Container(
//               padding: const EdgeInsets.only(top: 160, left: 30),
//               child: const Text(
//                 "Select Category",
//                 style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
