import 'package:flutter/material.dart';
import 'package:pa/ekranlar/bookFlight.dart';
import 'package:pa/ekranlar/create.dart';
import 'package:pa/ekranlar/flight_info.dart';
import 'package:pa/ekranlar/homepage.dart';
import 'package:pa/ekranlar/login.dart';
import 'package:pa/ekranlar/book_seat.dart';
import 'package:pa/ekranlar/personal_info.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChooseSeat(),
      debugShowCheckedModeBanner: false,
    );
  }
}
