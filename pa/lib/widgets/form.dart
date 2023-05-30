import 'package:flutter/material.dart';
import 'package:pa/ekranlar/search_result.dart';

import 'bottun.dart';

class form extends StatefulWidget {
  const form({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  State<form> createState() => _formState();
}

class _formState extends State<form> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: 10,
          right: 10,
        ),
        width: widget.size.width,
        height: widget.size.height / 2,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: Container(
            margin: EdgeInsets.all(10),
            width: size.width,
            height: size.height / 2,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 241, 231, 231),
                borderRadius: BorderRadius.all(Radius.circular(15))),
            child: Form(
              child: form_container(),
            )));
  }
}

class form_container extends StatefulWidget {
  const form_container({
    super.key,
  });

  @override
  State<form_container> createState() => _form_containerState();
}

class _form_containerState extends State<form_container> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            text_filed(
              lable: 'From',
              icon: null,
            ),
            text_filed(
              lable: 'To',
              icon: null,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: text_filed(
                    lable: 'Departure',
                    icon: null,
                  ),
                ),
                Expanded(
                    child: text_filed(
                  lable: 'Return',
                  icon: null,
                ))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: text_filed(
                    lable: 'Traveller',
                    icon: null,
                  ),
                ),
                Expanded(
                    child: text_filed(
                  lable: 'Class',
                  icon: null,
                )),
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => searcg_r()));
              },
              child: bot(
                size: size,
                txt_b: 'Search',
              ),
            )
          ],
        ),
      ),
    );
  }
}

class text_filed extends StatefulWidget {
  String lable;
  Icon? icon;
  Icon? ic;
  text_filed({required this.lable, required this.icon, this.ic});

  @override
  State<text_filed> createState() => _text_filedState();
}

class _text_filedState extends State<text_filed> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10, right: 5, left: 5, top: 5),
      child: TextFormField(
        decoration: InputDecoration(
            suffixIcon: widget.icon,
            prefixIcon: widget.ic,
            focusColor: Color.fromARGB(129, 128, 7, 7),
            filled: true,
            labelText: widget.lable,
            border: OutlineInputBorder(
                borderSide: BorderSide(
                    width: 2,
                    color: Color.fromARGB(61, 128, 7, 7),
                    style: BorderStyle.solid),
                borderRadius: BorderRadius.all(Radius.circular(15)))),
      ),
    );
  }
}
