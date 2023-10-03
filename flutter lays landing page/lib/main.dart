// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import "./UI/HomePage.dart";
import './UI/AboutPage.dart';
import './UI/ContactPage.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => HomePage(),
        "/About": (context) => AboutPage(),
        "/Contact": (context) => ContactPage(),
      },
    ),
  );
}
