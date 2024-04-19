import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Import this for input formatters

import 'package:google_fonts/google_fonts.dart';
import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const VerificationPage(),
    );
  }
}

class VerificationPage extends StatefulWidget {
  const VerificationPage({Key? key}) : super(key: key);

  @override
  State<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  late FocusNode secondFocusNode;
  late FocusNode thirdFocusNode;
  late FocusNode fourthFocusNode;
  final TextEditingController firstDigitController = TextEditingController();
  final TextEditingController secondDigitController = TextEditingController();
  final TextEditingController thirdDigitController = TextEditingController();
  final TextEditingController fourthDigitController = TextEditingController();

  @override
  void initState() {
    super.initState();
    secondFocusNode = FocusNode();
    thirdFocusNode = FocusNode();
    fourthFocusNode = FocusNode();
  }

  @override
  void dispose() {
    secondFocusNode.dispose();
    thirdFocusNode.dispose();
    fourthFocusNode.dispose();
    super.dispose();
  }
  void navigateToHomePage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HomePage()),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Navex',
                style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Image.asset(
                'images/verify.jpg', // Adjust the image path as needed
                height: 250,
              ),
              Text(
                'Verification',
                style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              Text(
                'Please enter the verification code sent to your email',
                style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFFF2EDED),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black),
                      ),
                      height: 50,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        controller: firstDigitController,
                        focusNode: FocusNode(),
                        onChanged: (value) {
                          if (value.length == 1) {
                            secondFocusNode.requestFocus();
                          }
                        },
                        decoration: InputDecoration(
                          labelText: '   0',
                          border: InputBorder.none,
                        ),
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                          LengthLimitingTextInputFormatter(1),
                        ],
                        textInputAction: TextInputAction.next,
                        onSubmitted: (_) {
                          secondFocusNode.requestFocus();
                        },
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFFF2EDED),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black),
                      ),
                      height: 50,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        controller: secondDigitController,
                        focusNode: secondFocusNode,
                        onChanged: (value) {
                          if (value.length == 1) {
                            thirdFocusNode.requestFocus();
                          }
                        },
                        decoration: InputDecoration(
                          labelText: '   0',
                          border: InputBorder.none,
                        ),
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                          LengthLimitingTextInputFormatter(1),
                        ],
                        textInputAction: TextInputAction.next,
                        onSubmitted: (_) {
                          thirdFocusNode.requestFocus();
                        },
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFFF2EDED),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black),
                      ),
                      height: 50,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        controller: thirdDigitController,
                        focusNode: thirdFocusNode,
                        onChanged: (value) {
                          if (value.length == 1) {
                            fourthFocusNode.requestFocus();
                          }
                        },
                        decoration: InputDecoration(
                          labelText: '   0',
                          border: InputBorder.none,
                        ),
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                          LengthLimitingTextInputFormatter(1),
                        ],
                        textInputAction: TextInputAction.next,
                        onSubmitted: (_) {
                          fourthFocusNode.requestFocus();
                        },
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFFF2EDED),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black),
                      ),
                      height: 50,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        controller: fourthDigitController,
                        focusNode: fourthFocusNode,
                        onChanged: (value) {
                          if (value.length == 0) {
                            thirdFocusNode.requestFocus();
                          }
                        },
                        decoration: InputDecoration(
                          labelText: '   0',
                          border: InputBorder.none,
                        ),
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                          LengthLimitingTextInputFormatter(1),
                        ],
                        textInputAction: TextInputAction.next,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: navigateToHomePage,
                child: ElevatedButton(
                  onPressed: navigateToHomePage,
                  child: Text(
                    'Continue',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ), backgroundColor: Colors.black,
                    minimumSize: const Size(50, 50),
                  ),
                ),
              ),
              const SizedBox(height: 33),
            ],
          ),
        ),
      ),
    );
  }
}