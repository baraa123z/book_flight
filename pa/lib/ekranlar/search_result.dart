import 'package:flutter/material.dart';
import 'package:pa/widgets/bottun.dart';

import '../widgets/tiket.dart';

class searcg_r extends StatefulWidget {
  const searcg_r({super.key});

  @override
  State<searcg_r> createState() => _searcg_rState();
}

class _searcg_rState extends State<searcg_r> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 241, 231, 231),
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Color.fromARGB(255, 241, 231, 231),
          centerTitle: true,
          title: Text(
            'Search Result',
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w400,
                color: Color.fromARGB(255, 100, 4, 4)),
          )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            tiket(
              size: size,
              show_bot: true,
            ),
            tiket(
              size: size,
              show_bot: true,
            ),
            tiket(
              size: size,
              show_bot: true,
            )
          ],
        ),
      ),
    );
  }
}
