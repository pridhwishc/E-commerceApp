import 'package:flutter/material.dart';
import 'package:students_app/Screens/signInScreen.dart';

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
        useMaterial3: true, colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple).copyWith(background: Color.fromARGB(146, 150, 114, 152)),),
      
      home: SignInScreen(),
    );
  }
}
