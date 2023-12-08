
import 'package:flutter/material.dart';
import 'package:students_app/Screens/signUpScreen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: ListView(
            children: [
              Center(
                child: Text(
                  "Hello! Welcome back",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(height: 35),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                ),
              ),
              SizedBox(height: 16),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                ),
              ),
              SizedBox(height: 8.0),
              GestureDetector(
                onTap: () {
                  // implement forgot password logic
                  print('Forgot Password tapped');
                },
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 36),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Sign IN',
                ),
              ),
              SizedBox(height: 36),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext ctx) => SignUpScreen()));
                },
                child: Center(
                  child: Text(
                    'Already have an account? Sign Up',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 36),
              Container(
                width: 400,
                height: 3,
                color: Colors.grey,
              ),
              SizedBox(height: 36),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {
                      // google sign up logic
                    },
                    icon: Icon(Icons.g_mobiledata_outlined),
                    iconSize: 40,
                  ),
                  IconButton(
                    onPressed: () {
                      // mobile sign up logic
                    },
                    icon: Icon(Icons.phone),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
