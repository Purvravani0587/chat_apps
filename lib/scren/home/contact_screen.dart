import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  bool temp_image = false;
  XFile? image;
  final ImagePicker picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Colors.black,
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  actions: [
                    TextButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.red)),
                        onPressed: () {},
                        child: Text(
                          "Cancel",
                          style: TextStyle(color: Colors.white),
                        )),
                    TextButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.green)),
                        onPressed: () {},
                        child: Text("Save",style: TextStyle(color: Colors.white),)),
                  ],
                  content: Text("Are you sure this contact is save "),
                );
              },
            );
          },
          icon: Icon(
            Icons.save,
            color: Colors.white,
          ),
          label: Text(
            'Save data',
            style: TextStyle(color: Colors.white),
          )),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      actions: [
                        TextButton(
                            onPressed: () async {
                              image = await picker.pickImage(
                                  source: ImageSource.camera);
                              Navigator.pop(context);
                              setState(() {

                              });
                            },
                            child: Text("Camera")),
                        TextButton(
                            onPressed: () async {
                              image = await picker.pickImage(
                                  source: ImageSource.gallery);
                              Navigator.pop(context);
                              setState(() {

                              });

                            },
                            child: Text("gallary")),
                      ],
                      content: Text("Upload your pic.."),
                    );
                  },
                );
                setState(() {});
              },
              child: Container(
                  height: 100,
                  width: 100,
                  decoration: (image != null)
                      ? BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(width: 2, color: Colors.black),
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: FileImage(File("${image!.path}"))))
                      : BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(width: 2, color: Colors.black),
                          image: DecorationImage(
                              image: AssetImage("image/Unknown.png")))),
            ),
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
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.phone),
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
