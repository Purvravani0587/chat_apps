import 'package:flutter/material.dart';

class Home_screen extends StatefulWidget {
  const Home_screen({super.key});

  @override
  State<Home_screen> createState() => _Home_screenState();
}

class _Home_screenState extends State<Home_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text(""),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Container(
          width: 100,
          height: 50,
          child: Row(
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.add)),
              Text("Add contact")
            ],
          ),
        ),
      ),
    );
  }
}
