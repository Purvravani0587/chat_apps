import 'package:chat_apps/login/register.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';

import '../auth/google.dart';
import '../config/database/db.dart';

class login_screen extends StatefulWidget {
  const login_screen({super.key});

  @override
  State<login_screen> createState() => _login_screenState();
}

class _login_screenState extends State<login_screen> {
  TextEditingController email = TextEditingController();
  TextEditingController Password = TextEditingController();

  //
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   get();
  // }
  final textFieldFocusNode = FocusNode();
  bool _obscured = false;

  void _toggleObscured() {
    setState(() {
      _obscured = !_obscured;
      if (textFieldFocusNode.hasPrimaryFocus)
        return; // If focus is on text field, dont unfocus
      textFieldFocusNode.canRequestFocus =
      false; // Prevents focus if tap on eye
    });
  }


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
              const Text(
                "Welcome back you've \nbeen missed!",
                style: TextStyle(fontSize: 25),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: email,
                  cursorColor: Colors.black,
                  decoration: const InputDecoration(
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
              Padding(padding: const EdgeInsets.all(8.0),
                child: TextField(keyboardType: TextInputType.visiblePassword,
                  obscureText: _obscured ? false : true,
                  focusNode: textFieldFocusNode,
                  decoration: InputDecoration(
                    helperText: 'No more than 8 characters.',
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    //Hides label on focus or if filled
                    labelText: "Password",

                    // Reduces height a bit
                    border: OutlineInputBorder(
                      // borderSide: BorderSide.none,              // No border
                      borderRadius: BorderRadius.circular(
                          12), // Apply corner radius
                    ),
                    prefixIcon: const Icon(Icons.lock_rounded, size: 24),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 4, 0),
                      child: GestureDetector(
                        onTap: _toggleObscured,
                        child: Icon(
                          _obscured
                              ? Icons.visibility_rounded
                              : Icons.visibility_off_rounded,
                          size: 24,
                        ),
                      ),
                    ),
                  ),),),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: SizedBox(
                    width: double.infinity,
                    child: Text(
                      "Forget Password?",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                      textAlign: TextAlign.end,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.blue),
                        fixedSize: MaterialStatePropertyAll(Size(300, 50))),
                    onPressed: () async {
                      // insert_data(email.text,Password.text);
                    },
                    child: const Text(
                      "Login",
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                    style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.white),
                        fixedSize: MaterialStatePropertyAll(Size(300, 50))),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return const Register_screen();
                        },
                      ));
                    },
                    child: const Text(
                      "Create new account",
                      style: TextStyle(color: Colors.black),
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
                child: SizedBox(
                  height: 50,
                  width: 200,
                  child: SignInButton(
                    Buttons.Google,
                    onPressed: () {
                      signInWithGoogle();
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 50,
                  width: 200,
                  child: SignInButton(
                    Buttons.Facebook,
                    onPressed: () {
                      FacebookAuth.instance.login();
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
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
