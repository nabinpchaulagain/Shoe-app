import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ForgotpasswordScreen extends StatefulWidget {
  const ForgotpasswordScreen({super.key});
  static const routeName = "/forgotpasswordscreen";

  @override
  State<ForgotpasswordScreen> createState() => _ForgotpasswordScreenState();
}

class _ForgotpasswordScreenState extends State<ForgotpasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 30),
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 80, left: 35),
                child: const Text(
                  "Forgot Password",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                width: 330,
                padding: const EdgeInsets.only(top: 140, left: 50),
                child: const Text(
                  "Enter your Email Account To Reset Your Password",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                  top: 220,
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
                        hintText: "xxxxxxxxxxxx",
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            gapPadding: 10,
                            borderRadius: BorderRadius.circular(12))),
                    keyboardType: TextInputType.text,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 330, left: 50),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(290, 50),
                        backgroundColor: HexColor("#2B6B8B"),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    onPressed: () {},
                    child: const Text(
                      "Reset Password",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    )),
              ),
              IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/loginscreen");
                  },
                  icon: const Icon(Icons.arrow_back))
            ],
          ),
        ),
      ),
    );
  }
}
