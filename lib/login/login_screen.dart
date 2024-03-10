import 'package:chat_apps/login/register.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';

class login_screen extends StatefulWidget {
  const login_screen({super.key});

  @override
  State<login_screen> createState() => _login_screenState();
}

class _login_screenState extends State<login_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "Login here",
                style: TextStyle(fontSize: 35, color: Colors.blue.shade600),
              ),
              Text(
                "Welcome back you've \nbeen missed!",
                style: TextStyle(fontSize: 25),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
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
              Padding(
                padding: const EdgeInsets.all(8.0),
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
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                    width: double.infinity,
                    child: Text(
                      "Forget Password?",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                      textAlign: TextAlign.end,
                    )),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.blue),
                        fixedSize: MaterialStatePropertyAll(Size(300, 50))),
                    onPressed: () {

                    },
                    child: Text(
                      "Login",
                      style: TextStyle(color: Colors.white,fontSize: 25),
                    )),
              ),
              Text(
                "---------------------------or----------------------------",
                style: TextStyle(fontSize: 30, color: Colors.black),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: TextButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.white),
                        fixedSize: MaterialStatePropertyAll(Size(300, 50))),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return Register_screen();
                      },));
                    },
                    child: Text(
                      "Create new account",
                      style: TextStyle(color: Colors.black),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
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
                    onPressed: () {

                    },
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
