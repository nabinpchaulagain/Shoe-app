import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';

class OnBoard1 extends StatefulWidget {
  const OnBoard1({super.key});
  static const String routeName = "/onboard1";

  @override
  State<OnBoard1> createState() => _OnBoard1State();
}

class _OnBoard1State extends State<OnBoard1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: HexColor("#48B2E7"),
        body: Stack(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(top: 90, left: 80),
              child: const Text(
                "WELCOME TO",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.w900),
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(top: 135, left: 160),
              child: const Text(
                "NIKE",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.w900),
              ),
            ),
            Container(
                width: double.infinity,
                padding: const EdgeInsets.only(top: 20),
                child: Image.asset(
                  "assets/images/image1.png",
                )),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(top: 370),
              child: SvgPicture.asset(
                "assets/images/Vector.svg",
              ),
            ),
            Container(
                padding: const EdgeInsets.only(top: 85, left: 60),
                child: Image.asset("assets/images/Highlight_05.png")),
            Container(
                padding: const EdgeInsets.only(top: 480, left: 230),
                child: Opacity(
                  opacity: 0.5,
                  child: Image.asset(
                    "assets/images/Highlight_10.png",
                  ),
                )),
            Container(
                padding: const EdgeInsets.only(top: 550, left: 30),
                child: Opacity(
                  opacity: 0.5,
                  child: Transform.rotate(
                    angle: 250 * pi / 180,
                    child: Image.asset(
                      "assets/images/Highlight_10.png",
                    ),
                  ),
                )),
            Container(
                padding: const EdgeInsets.only(top: 200, left: 140),
                child: Image.asset("assets/images/Vector2.png")),
            Container(
              padding: const EdgeInsets.only(top: 250, left: 40),
              child: Opacity(
                  opacity: 0.5,
                  child: Image.asset(
                    "assets/images/Misc_04.png",
                    height: 40,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
