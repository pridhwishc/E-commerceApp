import 'package:flutter/material.dart';

class addStudent extends StatelessWidget {
  const addStudent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(children: [
          Center(
            child: Text(
              "Enter User Details!",
              style: TextStyle(
                color: Colors.green[400],
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),
          ),
          SizedBox(height: 35),
          TextField(
            decoration: InputDecoration(
              hintText: 'Name',
              contentPadding:
                  EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(14.0)),
              ),
            ),
          ),
          SizedBox(height: 35),
          TextField(
            decoration: InputDecoration(
              hintText: 'Age',
              contentPadding:
                  EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(14.0)),
              ),
            ),
          ),
          SizedBox(height: 36),
          ElevatedButton(
            onPressed: () {
              // Implement save logic
            },
            child: Text(
              'Save',
            ),
          ),
        ]),
      ),
    );
  }
}
