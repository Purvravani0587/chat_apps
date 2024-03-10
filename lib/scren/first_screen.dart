import 'package:chat_apps/login/register.dart';
import 'package:flutter/material.dart';

import '../login/login_screen.dart';

class First_screen extends StatefulWidget {
  const First_screen({super.key});

  @override
  State<First_screen> createState() => _First_screenState();
}

class _First_screenState extends State<First_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill, image: AssetImage("image/bg1.jpeg"))),
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Container(
                  child: Text(
                "Login",
                style: TextStyle(fontSize: 35),
              )),
              SizedBox(
                height: 50,
              ),
              Text(
                "Discover your \n Dreame job here",
                style: TextStyle(fontSize: 35, color: Colors.blue.shade500),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                    style: TextStyle(),
                    textAlign: TextAlign.center,
                    "Explore all existing job roles baseed on your \n intrest and study major"),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 50,
                    ),
                    Expanded(
                      child: InkWell(onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return login_screen();
                        },));
                      },
                        child: Container(
                          width: 200,
                          alignment: Alignment.center,
                          child: Text(
                            "Login",
                            style: TextStyle(fontSize: 30, color: Colors.white),
                          ),
                          height: 100,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white.withOpacity(0.8),
                                offset: Offset(-6.0, -6.0),
                                blurRadius: 16.0,
                              ),
                              BoxShadow(
                                  color: Colors.blue,
                                  offset: Offset(6.0, 4),
                                  blurRadius: 5),
                            ],
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: InkWell(onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return Register_screen();
                        },));
                      },
                        child: Container(
                          width: 200,
                          alignment: Alignment.center,
                          height: 100,
                          child: Text(
                            "Register",
                            style: TextStyle(fontSize: 30),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white38,
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 50,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
