import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/location_tracker.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1D1D1D), // Set the background color
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 200),
            const Text(
              "Welcome to our \nclean world!",
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 30.0, // Font size for text
                fontWeight: FontWeight.bold,
                color: Colors.white, // Text color
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 170), // Add space between text and icon
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: const RadialGradient(
                  colors: [
                    Color.fromRGBO(57, 180, 78, 1),
                    Color.fromRGBO(78, 233, 104, 1)
                  ],
                ),
              ),
              width: 140, // Circle width
              height: 140, // Circle height
              child: const Icon(
                Icons.check_circle_outline_rounded, // Check icon
                color: Color(0xFF1D1D1D), // Icon color
                size: 90, // Icon size
              ),
            ),
            const SizedBox(height: 50),
            GestureDetector(
              onTap: () {
                // Action to perform when "Continue" is tapped
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const TrackBus()),
                );
              },
              child: const Text(
              "Continue",
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 15.0, // Font size for text
                fontWeight: FontWeight.w300,
                color: Color.fromARGB(255, 71, 212, 92), // Text color
              ),
              textAlign: TextAlign.center,
            ),
            ),
          ],
        ),
      ),
    );
  }
}


