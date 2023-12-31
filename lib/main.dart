import 'package:flutter/material.dart';
import 'package:mobile_cv_application/screens/edit_details_screen.dart';
import 'package:mobile_cv_application/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.green.shade700,
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
