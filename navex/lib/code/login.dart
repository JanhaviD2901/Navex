import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home.dart';
import 'forgot.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                'images/login.jpg', // Adjust the image path as needed
                height: 100,
              ),
              const SizedBox(height: 10),
              Text(
                'Log in \nto Navex',
                style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
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
              const SizedBox(height: 8),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotPasswordPage()));
                },
                child: Text(
                  'Forgot Password?',
                  style: GoogleFonts.montserrat(
                    color: Colors.purple, // Changed color to purple
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(height: 15), 
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black,
                ),
                height: 50,
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  child: Center(
                    child: Text(
                      'Continue',
                      style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.black),
                ),
                child: OutlinedButton(
                  onPressed: () {
                    // Implement login button functionality
                  },
                  child: Text(
                    'Continue with Google',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  style: OutlinedButton.styleFrom(
                    primary: Colors.white,
                    minimumSize: const Size(50, 50),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
