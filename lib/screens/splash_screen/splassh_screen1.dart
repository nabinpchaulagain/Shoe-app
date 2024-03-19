import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shoeapp/screens/loginscreen/loginscreen.dart';
import 'package:shoeapp/screens/onboardscreen/boardscreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static const String routeName = "/splashscreen1";

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool isFirstVisit = true;
  void getSharedValue() async {
    SharedPreferences pref = await SharedPreferences.getInstance();

    setState(() {
      isFirstVisit = pref.getBool("isFirstVisit")!;
    });
  }

  @override
  void initState() {
    super.initState();
    getSharedValue();
    Future.delayed(const Duration(seconds: 2), () {});
    _navigatetoboard();
    if (isFirstVisit) {
      _navigatetoboard();
    } else {
      _navigatetologin();
    }
  }

  _navigatetoboard() async {
    await Future.delayed(const Duration(seconds: 2), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const OnBoard()));
  }

  _navigatetologin() async {
    await Future.delayed(const Duration(seconds: 2), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const LoginScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: HexColor("#48B2E7"),
            body: Stack(children: [
              Container(
                padding: const EdgeInsets.only(top: 240, left: 60),
                child: const Text(
                  "WEAR",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 65),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 245, left: 245),
                child: const Text(
                  "ME",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                    fontSize: 40,
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.only(top: 250),
                child: SvgPicture.asset(
                  "assets/images/Vector.svg",
                ),
              ),
            ])));
  }
}
