import 'package:flutter/material.dart';
import 'package:students_app/Screens/addStudentScreen.dart';

class SearchStudent extends StatefulWidget {
  const SearchStudent({super.key});

  @override
  State<SearchStudent> createState() => _SearchStudentState();
}

class _SearchStudentState extends State<SearchStudent> {
  double sliderValue = 10.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.green,
        onPressed: () {
          // Navigate to another screen on button press
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => addStudent()),
          );
        },
        icon: Icon(Icons.add),
        label: Text('Student Details'),
      ),
      appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text("Students Details"),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {
                // pop until to login page should be added here
              },
              icon: Icon(Icons.logout),
            ),
          ]),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 48,
                  child: Container(
                      width: 280,
                      height: 48,
                      color: Colors.white60,
                      child: TextField(
                          decoration: InputDecoration(
                              hintText: 'Search',
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 20.0),
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(32.0)),
                              ),
                              prefixIcon: Icon(Icons.search),
                              fillColor: Colors.white))),
                )
              ],
            ),
            Row(children: [
              SizedBox(width: 30),
              Container(
                child: Text(
                  "Age Range: 0 - 50",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Slider(
                value: sliderValue,
                min: 10,
                max: 50,
                activeColor: Colors.pink,
                inactiveColor: Colors.black,
                onChanged: (double newValue) {
                  setState(() {
                    sliderValue = newValue;
                  });
                },
              )
            ]),
            // ListView() // logic for added students details should be fetched here
          ],
        ),
      ),
    );
  }
}
