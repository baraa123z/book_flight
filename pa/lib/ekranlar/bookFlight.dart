import 'package:flutter/material.dart';

import '../widgets/form.dart';
import '../widgets/hot_offer.dart';
import '../widgets/menu.dart';

class bookflight extends StatefulWidget {
  const bookflight({super.key});

  @override
  State<bookflight> createState() => _bookflightState();
}

bool ontap = false;

class _bookflightState extends State<bookflight> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 241, 231, 231),
      appBar: AppBar(
          elevation: 0,
          leading: IconButton(
              onPressed: () {},
              icon: Icon(Icons.menu, color: Color.fromARGB(255, 100, 4, 4))),
          backgroundColor: Color.fromARGB(255, 241, 231, 231),
          centerTitle: true,
          title: Text(
            'Book Flight',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w400,
              color: Color.fromARGB(129, 128, 7, 7),
            ),
          )),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [menu(size: size), form(size: size), Hot_offer(size: size)],
        ),
      ),
    );
  }
}
