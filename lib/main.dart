import 'package:flutter/material.dart';
import 'package:students_app/Screens/signUpScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true, colorScheme: ColorScheme.fromSeed(seedColor: Colors.green).copyWith(background: Color.fromARGB(255, 255, 255, 255)),),
      home: SignUpScreen(),
    );
  }
}
