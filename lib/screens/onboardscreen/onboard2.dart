import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';

class OnBoard2 extends StatefulWidget {
  const OnBoard2({super.key});
  static const String routeName = "/onboard2";

  @override
  State<OnBoard2> createState() => _OnBoard2State();
}

class _OnBoard2State extends State<OnBoard2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: HexColor("#48B2E7"),
        body: Stack(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(top: 380, left: 55),
              child: const Text(
                "Let's Start Journey ",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 34,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(top: 435, left: 120),
              child: const Text(
                "With Nike",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 34,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Container(
                width: 300,
                padding: const EdgeInsets.only(top: 500, left: 45),
                child: const Text(
                  "Smart,Gorgeous & Fashionable ",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w400),
                )),
            Container(
                width: 300,
                padding: const EdgeInsets.only(top: 535, left: 75),
                child: const Text(
                  " Collection Explor Now",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w400),
                )),
            Container(
                width: double.infinity,
                padding: const EdgeInsets.only(top: 60),
                child: Image.asset(
                  "assets/images/image2.png",
                )),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(top: 370),
              child: SvgPicture.asset(
                "assets/images/Vector.svg",
              ),
            ),
            Container(
                padding: const EdgeInsets.only(top: 70, left: 50),
                child: Image.asset(
                  "assets/images/Highlight_10.png",
                )),
            Container(
              padding: const EdgeInsets.only(top: 70, left: 330),
              child: Image.asset(
                "assets/images/Misc_04.png",
                height: 45,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
