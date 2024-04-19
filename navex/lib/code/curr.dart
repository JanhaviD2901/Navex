import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const CurrPage(),
    );
  }
}

class CurrPage extends StatefulWidget {
  const CurrPage({Key? key}) : super(key: key);

  @override
  State<CurrPage> createState() => _CurrPageState();
}

class _CurrPageState extends State<CurrPage> {
  final currentController = TextEditingController();
  final destinationController = TextEditingController();

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
                  textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: TextField(
                  controller: currentController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFF2EDED), // Background color
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    hintText: 'Enter Current Location',
                    hintStyle: GoogleFonts.montserrat(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ), // Apply Montserrat font
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0), // Corrected padding
                child: TextField(
                  controller: destinationController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFF2EDED), // Background color
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    hintText: 'Enter Destination',
                    hintStyle: GoogleFonts.montserrat(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ), // Apply Montserrat font
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton.icon(
                  onPressed: () {
                    // Add onPressed logic here
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RoutePage()),
                    );
                  },
                  icon: Icon(
                    Icons.arrow_forward,
                    color: Colors.green,
                  ),
                  label: Text(
                    'Fare',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    onPrimary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 15,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  children: [
                    buildGridItem('Japan', 'images/japan.jpg', Colors.black),
                    buildGridItem('America', 'images/america.jpg', Colors.black),
                    buildGridItem('Indonesia', 'images/indonesia.jpg', Colors.black),
                    buildGridItem('Australia', 'images/australia.jpg', Colors.black),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildGridItem(String text, String imageUrl, Color borderColor) {
    return Container(
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: borderColor, width: 2), // Add black border
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imageUrl,
            width: 80,
            height: 80,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 10),
          Text(
            text,
            style: GoogleFonts.montserrat(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}