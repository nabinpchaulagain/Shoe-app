import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomHomeBar extends StatelessWidget {
  const CustomHomeBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: InkWell(
        onTap: () {},
        child: SizedBox(
          height: 40,
          width: 40,
          child: SvgPicture.asset(
            "assets/images/menu.svg",
            alignment: AlignmentDirectional.center,
            fit: BoxFit.scaleDown,
          ),
        ),
      ),
      title: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 25),
          child: SizedBox(
            child: SvgPicture.asset(
              "assets/images/explore.svg",
              alignment: AlignmentDirectional.topStart,
            ),
          ),
        ),
        Text("Explore",
            style: GoogleFonts.raleway(
              textStyle: const TextStyle(
                  wordSpacing: 1.5, fontWeight: FontWeight.bold, fontSize: 28),
            )),
      ]),
      trailing: Stack(children: [
        Container(
            height: 45,
            width: 45,
            decoration: const BoxDecoration(
                boxShadow: [BoxShadow(blurRadius: 2, color: Colors.white)],
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(50))),
            child: const Icon(
              Icons.shopping_bag_outlined,
              color: Colors.black,
              size: 25,
            )),
        const Positioned(
            right: 0,
            child: CircleAvatar(
              radius: 6,
              backgroundColor: Colors.red,
            )),
      ]),
    );
  }
}
