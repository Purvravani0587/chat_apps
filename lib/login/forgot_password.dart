import 'package:flutter/material.dart';

class Forgot_password extends StatefulWidget {
  const Forgot_password({super.key});

  @override
  State<Forgot_password> createState() => _Forgot_passwordState();
}

class _Forgot_passwordState extends State<Forgot_password> {
  TextEditingController t1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Forgot Screen"),
          Text("Please enter your email to reset the password"),
          Text("Your Email:"),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: t1,
              obscureText: true,
              cursorColor: Colors.black,
              decoration: const InputDecoration(
                  hoverColor: Colors.black,
                  label: Text(
                    "Enter Email",
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
            child: ElevatedButton(
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.blue),
                    fixedSize: MaterialStatePropertyAll(Size(300, 50))),
                onPressed: () {},
                child: const Text(
                  "Reset Password",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                )),
          ),
        ],
      ),
    );
  }
}
