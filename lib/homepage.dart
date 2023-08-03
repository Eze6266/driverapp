// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:buka/screen2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: 100 * size.height / 100,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/map.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: [
                  SizedBox(height: 3 * size.height / 100),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SvgPicture.asset('assets/burger.svg'),
                      Image.asset('assets/lift.png'),
                      Image.asset('assets/profilee.png'),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              top: 12 * size.height / 100,
              left: 10 * size.width / 100,
              child: Container(
                width: 80 * size.width / 100,
                height: 14 * size.height / 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset('assets/circle.svg'),
                              SizedBox(width: 10),
                              Text(
                                'Skate Park',
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    color: Color(0xff656565),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 2 * size.height / 100),
                          Container(
                            height: 1,
                            width: 50 * size.width / 100,
                            color: Colors.grey,
                          ),
                          SizedBox(height: 2 * size.height / 100),
                          Row(
                            children: [
                              SvgPicture.asset('assets/pin.svg'),
                              SizedBox(width: 10),
                              Text(
                                'Home',
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    color: Color(0xff656565),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      Material(
                        borderRadius: BorderRadius.circular(50),
                        elevation: 1,
                        child: Container(
                          height: 4 * size.height / 100,
                          width: 20 * size.width / 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Color(0xffededed),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                'assets/plus.svg',
                              ),
                              SizedBox(width: 5),
                              Text(
                                'Add',
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    color: Color(0xff656565),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 48 * size.height / 100,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffededed),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    height: 6.5 * size.height / 100,
                    decoration: BoxDecoration(
                      // color: Color(0xffededed),
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 5 * size.width / 100),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Choose your ride',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: Color(0xff080a24),
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Material(
                            elevation: 4,
                            borderRadius: BorderRadius.circular(90),
                            child: Container(
                              height: 4 * size.height / 100,
                              width: 8 * size.width / 100,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(90),
                              ),
                              child: Icon(
                                Icons.arrow_back_ios,
                                color: Colors.black,
                                size: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    color: Color(0xffededed),
                  ),
                  SizedBox(height: 1 * size.height / 100),
                  Stack(
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          children: [
                            CarsTypesTile(
                              size: size,
                              maintext: 'Toyota Camry',
                              subtext: '2-3 person',
                              price: '\$7,00',
                              maintextColor: Colors.black,
                              priceColor: Colors.black,
                              containerColor: Colors.transparent,
                              subtextColor: Color(0xff656565),
                            ),
                            CarsTypesTile(
                              size: size,
                              maintext: 'Lexus R700',
                              subtext: '2-3 person',
                              price: '\$9,00',
                              maintextColor: Colors.white,
                              priceColor: Colors.white,
                              containerColor: Color(0xff8f00ff),
                              subtextColor: Colors.white,
                            ),
                            CarsTypesTile(
                              size: size,
                              maintext: 'Mercedes W90',
                              subtext: '2-3 person',
                              price: '\$10,00',
                              maintextColor: Colors.black,
                              priceColor: Colors.black,
                              containerColor: Colors.transparent,
                              subtextColor: Color(0xff656565),
                            ),
                            Container(
                              width: double.infinity,
                              height: 16.8 * size.height / 100,
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 5 * size.width / 100,
                                  vertical: 1 * size.height / 100,
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              'Cash',
                                              style: GoogleFonts.poppins(
                                                textStyle: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ),
                                            Icon(
                                              Icons.keyboard_arrow_down,
                                              color: Colors.black,
                                            ),
                                          ],
                                        ),
                                        Material(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          elevation: 2,
                                          child: Container(
                                            height: 4 * size.height / 100,
                                            width: 30 * size.width / 100,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                              color: Color(0xffededed),
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                SvgPicture.asset(
                                                  'assets/blacko.svg',
                                                ),
                                                SizedBox(width: 5),
                                                Text(
                                                  'Promo code',
                                                  style: GoogleFonts.poppins(
                                                    textStyle: TextStyle(
                                                      color: Color(0xff656565),
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 2 * size.height / 100),
                                    Container(
                                      height: 8 * size.height / 100,
                                      width: 80 * size.width / 100,
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 5 * size.width / 100),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Book this car',
                                              style: GoogleFonts.poppins(
                                                textStyle: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  '\$9,00',
                                                  style: GoogleFonts.poppins(
                                                    textStyle: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                    width:
                                                        3 * size.width / 100),
                                                GestureDetector(
                                                  onTap: () {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            Screen2(),
                                                      ),
                                                    );
                                                  },
                                                  child: Material(
                                                    elevation: 4,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            90),
                                                    child: Container(
                                                      height:
                                                          4 * size.height / 100,
                                                      width:
                                                          8 * size.width / 100,
                                                      decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(90),
                                                      ),
                                                      child: Icon(
                                                        Icons.arrow_forward_ios,
                                                        color: Colors.black,
                                                        size: 16,
                                                      ),
                                                    ),
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
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CarsTypesTile extends StatelessWidget {
  CarsTypesTile({
    super.key,
    required this.size,
    required this.maintext,
    required this.maintextColor,
    required this.price,
    required this.priceColor,
    required this.subtext,
    required this.subtextColor,
    required this.containerColor,
  });

  final Size size;
  String maintext;
  String subtext;
  String price;
  Color maintextColor;
  Color subtextColor;
  Color priceColor;
  Color containerColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 7 * size.height / 100,
      color: containerColor,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5 * size.width / 100),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$maintext',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      color: maintextColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(height: 1 * size.height / 100),
                Text(
                  '$subtext',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      color: subtextColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
            Text(
              '$price',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  color: priceColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
