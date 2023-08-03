// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  TextEditingController feedbackcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        body: Container(
          width: double.infinity,
          height: 100 * size.height / 100,
          color: Color(0xff8f00ff),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 5 * size.width / 100,
                  vertical: 4 * size.height / 100,
                ),
                child: Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(90),
                      ),
                      child: Icon(
                        Icons.close,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(width: 20 * size.width / 100),
                    Text(
                      'Rate Your Trip',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 80 * size.height / 100,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  left: 6 * size.width / 100,
                  right: 6 * size.width / 100,
                  top: 4 * size.height / 100,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset('assets/profilee.png'),
                              SizedBox(width: 4 * size.width / 100),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Ben Stokes',
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        color: Color(0xff080a24),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Image.asset('assets/star.png'),
                                      SizedBox(width: 5),
                                      Text(
                                        '4.9',
                                        style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                            color: Color(0xffc8c7cc),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: Color(0xff8f00ff),
                              borderRadius: BorderRadius.circular(90),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: SvgPicture.asset(
                                'assets/message.svg',
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 4 * size.height / 100),
                      Text(
                        'How is your trip?',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Color(0xff080a24),
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      SizedBox(height: 2 * size.height / 100),
                      Image.asset(
                        'assets/Stars.png',
                        height: 5 * size.height / 100,
                        width: 50 * size.width / 100,
                      ),
                      SizedBox(height: 2 * size.height / 100),
                      SizedBox(
                        height: 16 * size.height / 100,
                        width: 90 * size.width / 100,
                        child: TextFormField(
                          maxLines: 4,
                          onChanged: (val) {},
                          cursorColor: Colors.black,
                          controller: feedbackcontroller,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(20),
                            fillColor: Colors.white,
                            filled: true,
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 0.5),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(),
                            ),
                            hintText: 'write your feedback',
                            hintStyle: TextStyle(color: Colors.grey),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.grey.shade200, width: 1),
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 2 * size.height / 100),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Trip Deatil',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color: Color(0xff080a24),
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 3 * size.height / 100),
                      Container(
                        height: 20 * size.height / 100,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xffededed),
                          border: Border.all(color: Colors.grey),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
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
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 2 * size.height / 100),
                              Container(
                                height: 1,
                                width: double.infinity,
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
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 3 * size.height / 100),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Payment Detail',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color: Color(0xff080a24),
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 3 * size.height / 100),
                      PaymentDetailsTile(
                        maintext: 'Trip Expense',
                        price: '\$9,00',
                      ),
                      SizedBox(height: 3 * size.height / 100),
                      PaymentDetailsTile(
                        maintext: 'Discount Voucher',
                        price: '\$1,00',
                      ),
                      SizedBox(height: 3 * size.height / 100),
                      PaymentDetailsTile(
                        maintext: 'Total',
                        price: '\$8,00',
                      ),
                      SizedBox(height: 5 * size.height / 100),
                      Container(
                        height: 10 * size.height / 100,
                        width: 80 * size.width / 100,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(90),
                        ),
                        child: Center(
                          child: Text(
                            'Submit',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PaymentDetailsTile extends StatelessWidget {
  PaymentDetailsTile({
    super.key,
    required this.maintext,
    required this.price,
  });
  String maintext;
  String price;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '$maintext',
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        Text(
          '$price',
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}
