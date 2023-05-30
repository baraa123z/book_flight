import 'package:flutter/material.dart';

import '../ekranlar/search_result.dart';

class bot extends StatefulWidget {
  String txt_b;

  bot({
    super.key,
    required this.size,
    required this.txt_b,
  });

  final Size size;

  @override
  State<bot> createState() => _botState();
}

class _botState extends State<bot> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20, right: 5, left: 5),
      width: widget.size.width,
      height: 55,
      decoration: BoxDecoration(
        color: Color.fromARGB(129, 128, 7, 7),
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: Center(
          child: Text(
        widget.txt_b,
        style: TextStyle(fontSize: 20),
      )),
    );
  }
}
