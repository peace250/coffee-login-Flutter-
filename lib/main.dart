import 'package:flutter/material.dart';
import 'package:my_flutter_app/home.dart';
import 'package:my_flutter_app/form.dart';
void main() {
  runApp(MaterialApp(
    // Define the initial page
    home:Login_Form(),
    initialRoute: '/', 
     routes: {
      // '/': (context) => Home(),
      '/home': (context) => Home(),
      '/peace': (context) => Login_Form(),
    },
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      brightness: Brightness.dark,
      primarySwatch: Colors.orange,
    ),
  ));
}
