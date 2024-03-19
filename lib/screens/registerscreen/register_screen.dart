import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});
  static const String routeName = "/registerscreen";

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 80, left: 35),
                child: const Text(
                  "Register Account",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                width: 330,
                padding: const EdgeInsets.only(top: 140, left: 70),
                child: const Text(
                  "Fill Your Details Or Continue With Social Media",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 220, left: 35),
                child: const Text(
                  "Name",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                  top: 250,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: TextFormField(
                    decoration: InputDecoration(
                        fillColor: const Color.fromARGB(255, 224, 221, 221),
                        filled: true,
                        hintText: "xxxxxxxx",
                        contentPadding:
                            const EdgeInsets.fromLTRB(10, 10, 10, 10),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            gapPadding: 10,
                            borderRadius: BorderRadius.circular(12))),
                    keyboardType: TextInputType.text,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 310, left: 35),
                child: const Text(
                  "Email Address",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                  top: 340,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: TextFormField(
                    validator: (value) {
                      if (!value!.contains('@')) {
                        return 'please enter valid email address';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      debugPrint(value);
                    },
                    decoration: InputDecoration(
                        fillColor: const Color.fromARGB(255, 224, 221, 221),
                        filled: true,
                        hintText: "xyz@gmail.com",
                        contentPadding:
                            const EdgeInsets.fromLTRB(10, 10, 10, 10),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            gapPadding: 10,
                            borderRadius: BorderRadius.circular(12))),
                    keyboardType: TextInputType.text,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 395, left: 40),
                child: const Text(
                  "Password",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                  top: 425,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: TextFormField(
                    validator: (value) {
                      if (value!.length <= 8) {
                        return 'password must be 8 letters or more';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      debugPrint(value);
                    },
                    decoration: InputDecoration(
                        fillColor: const Color.fromARGB(255, 224, 221, 221),
                        filled: true,
                        hintText: "..........",
                        contentPadding:
                            const EdgeInsets.fromLTRB(10, 10, 10, 10),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            gapPadding: 10,
                            borderRadius: BorderRadius.circular(12))),
                    keyboardType: TextInputType.text,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 510, left: 50),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(290, 50),
                        backgroundColor: HexColor("#2B6B8B"),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                    onPressed: () {},
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    )),
              ),
              Container(
                padding: const EdgeInsets.only(top: 570, left: 50),
                child: ElevatedButton.icon(
                    label: const Text(
                      "Sign In With Google",
                      style: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(290, 50),
                        backgroundColor: const Color.fromARGB(255, 84, 88, 96),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      "assets/images/google.svg",
                      height: 30,
                    )),
              ),
              Container(
                padding: const EdgeInsets.only(top: 660, left: 90),
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, "/loginscreen");
                  },
                  child: const Text(
                    "Already Have Account? Sign In ",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 10, left: 10),
                child: IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/loginscreen");
                    },
                    icon: const Icon(Icons.arrow_back)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
