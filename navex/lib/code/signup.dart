import 'package:flutter/material.dart';
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
      home: const SignupPage(),
    );
  }
}

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

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
                'images/signup.png', // Adjust the image path as needed
                height: 200,
              ),
              Text(
                'Sign in \nto Navex',
                style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xFFF2EDED),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black), // Add black border
                ),
                height: 50, // Adjust the height as needed
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    labelText: '   Email',
                    border: InputBorder.none,
                  ),
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xFFF2EDED),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black), // Add black border
                ),
                height: 50, // Adjust the height as needed
                child: TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    labelText: '  Password',
                    border: InputBorder.none,
                  ),
                  obscureText: true,
                  style: GoogleFonts.montserrat(fontWeight: FontWeight.w500, fontSize: 14),
                ),
              ),
              const SizedBox(height: 15),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black,
                  ),
                  height: 50,
                  child: Center(
                    child: Text(
                      'Continue',
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
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