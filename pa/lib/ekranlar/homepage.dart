import 'package:flutter/material.dart';
import 'package:pa/ekranlar/bookFlight.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 241, 231, 231),
      body: Padding(
        padding: EdgeInsets.only(top: 60),
        child: Column(
          children: [
            GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => bookflight()));
                },
                child: Image(image: AssetImage('images/img.png'))),
            Text(
              'Bookin Flight',
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 100, 4, 4)),
            )
          ],
        ),
      ),
    );
  }
}
