import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/location_tracker.dart';

class AddrobotPage extends StatelessWidget {
  const AddrobotPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:
            const Color.fromRGBO(58, 84, 51, 1), // Set the background color
        body: SingleChildScrollView(
          child: SafeArea(
              child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50, left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          Icons.arrow_back_ios_rounded,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 160),
                const Text(
                  "Please enter the serial \nnumber of your  robot below.",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 30.0, // Font size for text
                    fontWeight: FontWeight.bold,
                    color: Colors.white, // Text color
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 90), // Add space between text and icon
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 12.24,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide.none,
                          ),
                          fillColor: const Color.fromRGBO(217, 217, 217, 1),
                          filled: true,
                        ),
                      ),
                      const SizedBox(height: 50),
                      const Center(
                        child: Text(
                          "OR",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 25.0, // Font size for text
                            fontWeight: FontWeight.bold,
                            color: Colors.white, // Text color
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(height: 50),
                      Center(
                        child: GestureDetector(
                          onTap: () {
                            // Action to perform when "Continue" is tapped
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const TrackBus()),
                            );
                          },
                          child: const Text(
                            "Scan The QR code",
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 15.0, // Font size for text
                              fontWeight: FontWeight.w300,
                              color: Colors.white, // Text color
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
        ));
  }
}
