import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shoeapp/screens/onboardscreen/onboard1.dart';
import 'package:shoeapp/screens/onboardscreen/onboard2.dart';
import 'package:shoeapp/screens/onboardscreen/onboard3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoard extends StatefulWidget {
  const OnBoard({super.key});
  static const String routeName = "/onboard";

  @override
  State<OnBoard> createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {
  final PageController controller = PageController();
  bool onLastpage = false;

  void isFirstVisit() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool("isFirstVisit", false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            onPageChanged: (index) {
              setState(() {
                onLastpage = (index == 2);
              });
            },
            controller: controller,
            children: const [OnBoard1(), OnBoard2(), OnBoard3()],
          ),
          Container(
            padding: const EdgeInsets.only(bottom: 60),
            alignment: const Alignment(0, 0.75),
            child: SmoothPageIndicator(
              controller: controller,
              count: 3,
              effect: WormEffect(
                  dotWidth: 40,
                  dotHeight: 5,
                  dotColor: HexColor("#2B6B8B"),
                  activeDotColor: Colors.white),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 650, left: 35),
            child: onLastpage
                ? ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(315, 50),
                        backgroundColor: Colors.white,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    onPressed: () {
                      Navigator.pushNamed(context, "/loginscreen");
                      isFirstVisit();
                    },
                    child: const Text(
                      "Done",
                      style: TextStyle(fontSize: 20),
                    ))
                : ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(315, 50),
                        backgroundColor: Colors.white,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    onPressed: () {
                      controller.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeIn);
                    },
                    child: const Text(
                      "Next",
                      style: TextStyle(fontSize: 20),
                    )),
          )
        ],
      ),
    );
  }
}
