import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';

class Register_screen extends StatefulWidget {
  const Register_screen({super.key});

  @override
  State<Register_screen> createState() => _Register_screenState();
}

class _Register_screenState extends State<Register_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "Create Account",
                style: TextStyle(fontSize: 35, color: Colors.blue.shade600),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  textAlign: TextAlign.center,
                  "Create an account  so you can explain an the  \nbeen missed!",
                  style: TextStyle(fontSize: 18),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                      hoverColor: Colors.white,
                      label: Text(
                        "Email",
                        style: TextStyle(color: Colors.black),
                      ),
                      hintText: "abc@gmail.com",
                      prefixIcon: Icon(
                        Icons.email,
                        color: Colors.black,
                      ),
                      focusColor: Colors.black,
                      fillColor: Colors.black,
                      hintStyle: TextStyle(color: Colors.black),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black))),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  obscureText: true,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                      hoverColor: Colors.black,
                      label: Text(
                        "password",
                        style: TextStyle(color: Colors.black),
                      ),
                      hintText: "****",
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.black,
                      ),
                      focusColor: Colors.black,
                      fillColor: Colors.black,
                      hintStyle: TextStyle(color: Colors.black),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black))),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  obscureText: true,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                      hoverColor: Colors.black,
                      label: Text(
                        "confirm password",
                        style: TextStyle(color: Colors.black),
                      ),
                      hintText: "******",
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.black,
                      ),
                      focusColor: Colors.black,
                      fillColor: Colors.black,
                      hintStyle: TextStyle(color: Colors.black),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.blue),
                        fixedSize: MaterialStatePropertyAll(Size(300, 50))),
                    onPressed: () {},
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    )),
              ),


              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Or contiune with",
                  style: TextStyle(color: Colors.blue),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  width: 200,
                  child: SignInButton(
                    Buttons.Google,
                    onPressed: () {},
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  width: 200,
                  child: SignInButton(
                    Buttons.Facebook,
                    onPressed: () {},
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  width: 200,
                  child: SignInButton(
                    Buttons.Apple,
                    onPressed: () {},
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
