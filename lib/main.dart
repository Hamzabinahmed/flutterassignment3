import 'package:flutter/material.dart';
import 'package:flutterassignment3/screens/landingscreen.dart';

// import 'screens/firsstscreen.dart';
// import 'screens/landingscreen.dart';
// import 'screens/signupscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: FirstScreen(),
      home: LandingScreen(),
      // home: SignupScreen(),
      // home: LandingScreen(),
    );
  }
}
