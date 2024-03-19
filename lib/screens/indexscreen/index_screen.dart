import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:shoeapp/homescreendemo.dart';
import 'package:shoeapp/screens/buttonnavigationbarscreen/addto_cart.dart';
import 'package:shoeapp/screens/buttonnavigationbarscreen/bell_screen.dart';
import 'package:shoeapp/screens/buttonnavigationbarscreen/favourite_screen.dart';

import 'package:shoeapp/screens/buttonnavigationbarscreen/profile_screen.dart';

class IndexScreen extends StatefulWidget {
  const IndexScreen({super.key});
  static const routeName = "/indexscreen";

  @override
  State<IndexScreen> createState() => _IndexScreenState();
}

class _IndexScreenState extends State<IndexScreen> {
  int currentIndex = 0;
  List<String> titles = ["Home", "Add To Cart", "bell", "profile", "favourite"];
  List<Widget> widgets = [
    const HomeScreen(),
    const AddtoCart(),
    const BellScreen(),
    const ProfileScreen(),
    const FavouriteScreen(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const HomeScreen();
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 238, 233, 233),
      body: widgets[currentIndex],
      bottomNavigationBar: Container(
        width: size.width,
        decoration: BoxDecoration(color: HexColor(AppColor.primaryColor)),
        height: 90,
        child: Stack(
          children: [
            CustomPaint(
              size: Size(size.width, (size.width * 0.312).toDouble()),
              painter: RPSCustomPainter(),
            ),
            Center(
              heightFactor: 0.9,
              child: FloatingActionButton(
                onPressed: () {
                  setState(() {
                    currentIndex = 0;
                  });
                },
                backgroundColor: HexColor("#5B9EE1"),
                shape: const CircleBorder(),
                elevation: 0.1,
                child: SvgPicture.asset("assets/images/carticon.svg"),
              ),
            ),
            SizedBox(
              width: size.width,
              height: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        currentIndex = 0;
                      });
                    },
                    icon: SvgPicture.asset("assets/images/homeicon.svg"),
                  ),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          currentIndex = 1;
                        });
                      },
                      icon: SvgPicture.asset("assets/images/hearticon.svg")),
                  Container(
                    width: size.width * 0.20,
                  ),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          currentIndex = 2;
                        });
                      },
                      icon: SvgPicture.asset(
                        "assets/images/bellicon.svg",
                      )),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          currentIndex = 3;
                        });
                      },
                      icon: SvgPicture.asset("assets/images/profileicon.svg")),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.3244320, size.height * 0.2692308);
    path_0.cubicTo(
        size.width * 0.1781040,
        size.height * 0.2794872,
        size.width * 0.04717413,
        size.height * 0.1566949,
        0,
        size.height * 0.09401709);
    path_0.lineTo(0, size.height);
    path_0.lineTo(size.width, size.height);
    path_0.lineTo(size.width, size.height * 0.09401709);
    path_0.cubicTo(
        size.width * 0.9279040,
        size.height * 0.2606838,
        size.width * 0.7383173,
        size.height * 0.2649573,
        size.width * 0.6809067,
        size.height * 0.2649573);
    path_0.cubicTo(
        size.width * 0.6234987,
        size.height * 0.2649573,
        size.width * 0.6128160,
        size.height * 0.2905983,
        size.width * 0.6128160,
        size.height * 0.3632479);
    path_0.cubicTo(
        size.width * 0.6128160,
        size.height * 0.4358974,
        size.width * 0.6250267,
        size.height * 0.6340034,
        size.width * 0.5540720,
        size.height * 0.6623932);
    path_0.cubicTo(
        size.width * 0.4152213,
        size.height * 0.7179487,
        size.width * 0.3881067,
        size.height * 0.5683761,
        size.width * 0.3858480,
        size.height * 0.4743590);
    path_0.cubicTo(
        size.width * 0.3831787,
        size.height * 0.3632479,
        size.width * 0.3898533,
        size.height * 0.2692308,
        size.width * 0.3244320,
        size.height * 0.2692308);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = Colors.white.withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
