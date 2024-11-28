import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/getstarted_page.dart';
import 'package:flutter_application_1/Pages/location_tracker.dart';
import 'package:flutter_application_1/Pages/welcome_page.dart';
import 'package:flutter_application_1/Pages/addrobot_page.dart';
import 'package:flutter_application_1/Pages/Request_page.dart';
import 'package:flutter_application_1/Pages/Confirme_request_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Poppins'),

      home: const GetStarted()
    );
  }
}

