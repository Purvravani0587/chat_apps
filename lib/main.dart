import 'package:chat_apps/login/login_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'scren/first_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(

  );
  runApp(MaterialApp(theme: ThemeData(
      textTheme: TextTheme(subtitle1: TextStyle(color: Colors.white))),
    home: First_screen(),
  ));
}
