import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';

class OnBoard3 extends StatefulWidget {
  const OnBoard3({super.key});
  static const String routeName = "/onboard3";

  @override
  State<OnBoard3> createState() => _OnBoard3State();
}

class _OnBoard3State extends State<OnBoard3> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: HexColor("#48B2E7"),
        body: Stack(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(top: 380, left: 90),
              child: const Text(
                "You Have The ",
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
                "Power To",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 34,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Container(
                padding: const EdgeInsets.only(top: 500, left: 30),
                child: const Text(
                  "There Are Many Beautiful And Attractive  ",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w400),
                )),
            Container(
                padding: const EdgeInsets.only(top: 535, left: 100),
                child: const Text(
                  " Plants To Your Room",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w400),
                )),
            SizedBox(
                width: double.infinity,
                child: Image.asset(
                  "assets/images/image3.png",
                )),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(top: 370),
              child: SvgPicture.asset(
                "assets/images/Vector.svg",
              ),
            ),
            Container(
                padding: const EdgeInsets.only(top: 130, left: 40),
                child: Image.asset(
                  "assets/images/Vector3.png",
                )),
            Container(
              padding: const EdgeInsets.only(top: 80, left: 50),
              child: Image.asset(
                "assets/images/Misc_04.png",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
