import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

import 'package:shoeapp/customappbardemo.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const routeName = "/homescreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, String>> data = [
    {
      "name": "All Shoes",
    },
    {
      "name": "Outdoor",
    },
    {
      "name": "Tennis",
    },
    {
      "name": "Running",
    },
    {
      "name": "Soccer",
    },
    {
      "name": "Basketball",
    },
    {
      "name": "Golf",
    },
    {
      "name": "Football",
    },
    {
      "name": "Baseball",
    },
    {
      "name": "Lifestyle",
    },
    {
      "name": "Walking",
    },
    {
      "name": "Jordan",
    },
    {
      "name": "Customize",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: HexColor(AppColor.primaryColor),
        height: double.infinity,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomHomeBar(),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      width: MediaQuery.of(context).size.width / 1.5,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          boxShadow: [BoxShadow(color: Colors.grey)]),
                      child: TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: const Padding(
                              padding: EdgeInsets.only(left: 20, right: 8),
                              child: Icon(Icons.search),
                            ),
                            filled: true,
                            hintText: "Looking for Shoes",
                            hintStyle: GoogleFonts.raleway(
                                textStyle: const TextStyle(
                                    fontWeight: FontWeight.w500)),
                            fillColor: Colors.white,
                            border: const OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)))),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: InkWell(
                      onTap: () {},
                      child: CircleAvatar(
                          radius: 30,
                          backgroundColor: HexColor("#48B2E7"),
                          child: SvgPicture.asset("assets/images/filter.svg")),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
              child: Text(
                "Select Category",
                style: GoogleFonts.raleway(
                    textStyle: const TextStyle(
                        fontWeight: FontWeight.w600, fontSize: 18)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: SizedBox(
                height: 50,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: data[index]['name']! != "Outdoor"
                          ? Container(
                              width: 120,
                              height: 50,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(15)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                  )
                                ],
                              ),
                              child: Text(
                                data[index]["name"]!,
                                style: GoogleFonts.raleway(
                                    textStyle: const TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15)),
                              ),
                            )
                          : Container(
                              width: 120,
                              height: 50,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: HexColor("#48B2E7"),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(15)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                  )
                                ],
                              ),
                              child: Text(
                                data[index]["name"]!,
                                style: GoogleFonts.raleway(
                                    color: Colors.white,
                                    textStyle: const TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15)),
                              ),
                            ),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Popular Shoes",
                    style: GoogleFonts.raleway(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18)),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      "See all",
                      style: GoogleFonts.raleway(
                          color: HexColor(AppColor.primaryButtonColor),
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 14)),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
              child: Row(
                children: [
                  for (var i = 0; i < 2; i++) ...{
                    Flexible(
                      child: Container(
                        height: 250,
                        width: 180,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            color: Colors.white),
                        child: Column(
                          children: [
                            Expanded(
                              child: Stack(children: [
                                Container(
                                  alignment: Alignment.center,
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)),
                                  ),
                                  child: Transform.rotate(
                                    angle: -0.2,
                                    child: Image.asset(
                                      "assets/images/shoe_example.png",
                                      width: 140,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Icon(Icons.favorite_outline_rounded),
                                )
                              ]),
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: SizedBox(
                                width: 180,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "BEST SELLER",
                                      style: GoogleFonts.raleway(
                                          color: HexColor(
                                              AppColor.primaryButtonColor),
                                          textStyle: const TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14)),
                                    ),
                                    Text(
                                      "Nike Air Max",
                                      style: GoogleFonts.raleway(
                                          textStyle: const TextStyle(
                                              color: Color.fromARGB(
                                                  255, 92, 88, 88),
                                              fontWeight: FontWeight.w700,
                                              fontSize: 18)),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "\$ 200.00",
                                          style: GoogleFonts.raleway(
                                              textStyle: const TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 18)),
                                        ),
                                        Container(
                                          height: 40,
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 8),
                                          decoration: BoxDecoration(
                                            color: HexColor(
                                                AppColor.primaryButtonColor),
                                            borderRadius:
                                                const BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(15),
                                                    bottomRight:
                                                        Radius.circular(15)),
                                          ),
                                          child: const Icon(
                                            Icons.add,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    )
                  }
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AppColor {
  static String primaryColor = "#F7F7F9";
  static String secondaryColor = "#0000FF";
  static String primaryTextColor = "#000000";
  static String secondaryTextColor = "#FFFFFF";
  static String primaryButtonColor = "#48B2E7";
}
