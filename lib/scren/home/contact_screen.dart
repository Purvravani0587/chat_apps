import 'dart:io';

import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  bool temp_image = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          InkWell(
            onTap: () {

              setState(() {});
            },
            child: Container(
                height: 100,
                width: 100,
                decoration: (temp_image)
                    ? BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(width: 2, color: Colors.black),
                        image: DecorationImage(image: FileImage(File(""))))
                    : BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(width: 2, color: Colors.black),
                        image: DecorationImage(
                            image: AssetImage("image/Unknown.png")))),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                floatingLabelBehavior: FloatingLabelBehavior.never,
                labelText: "Enter First name",
                border: OutlineInputBorder(
                  borderRadius:
                      BorderRadius.circular(12), // Apply corner radius
                ),
                prefixIcon: const Icon(Icons.account_circle, size: 24),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                floatingLabelBehavior: FloatingLabelBehavior.never,
                labelText: "Enter Last name",
                border: OutlineInputBorder(
                  borderRadius:
                      BorderRadius.circular(12), // Apply corner radius
                ),
                prefixIcon: const Icon(Icons.account_circle, size: 24),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IntlPhoneField(
              decoration: InputDecoration(prefixIcon: Icon(Icons.phone),
                labelText: 'Phone Number',
                border: OutlineInputBorder(
                  borderSide: BorderSide(),
                ),
              ),
              initialCountryCode: 'IN',
              onChanged: (phone) {
                print(phone.completeNumber);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                floatingLabelBehavior: FloatingLabelBehavior.never,
                labelText: "Enter Email",
                border: OutlineInputBorder(
                  borderRadius:
                      BorderRadius.circular(12), // Apply corner radius
                ),
                prefixIcon: const Icon(Icons.email, size: 24),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                floatingLabelBehavior: FloatingLabelBehavior.never,
                labelText: "Groups",
                border: OutlineInputBorder(
                  borderRadius:
                      BorderRadius.circular(12), // Apply corner radius
                ),
                prefixIcon: const Icon(Icons.groups, size: 24),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
