import 'package:flutter/material.dart';

class menu extends StatefulWidget {
  const menu({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  State<menu> createState() => _menuState();
}

bool ontapone = false;
bool ontaptwo = false;
bool ontapth = false;

class _menuState extends State<menu> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Stack(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        ontapone = true;
                        ontaptwo = false;
                        ontapth = false;
                      });
                    },
                    child: textbox(
                      color: ontapone
                          ? Color.fromARGB(129, 128, 7, 7)
                          : Colors.white,
                      on: () {},
                      txt: 'One Way',
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        ontaptwo = true;
                        ontapone = false;
                        ontapth = false;
                      });
                    },
                    child: textbox(
                      color: ontaptwo
                          ? Color.fromARGB(129, 128, 7, 7)
                          : Colors.white,
                      on: () {},
                      txt: 'Round',
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        ontapth = true;
                        ontapone = false;
                        ontaptwo = false;
                      });
                    },
                    child: textbox(
                      color: ontapth
                          ? Color.fromARGB(129, 128, 7, 7)
                          : Colors.white,
                      on: () {},
                      txt: 'Multicity',
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        margin: EdgeInsets.all(10),
        width: widget.size.width / 1.2,
        height: widget.size.width / 13,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(129, 128, 7, 7),
                blurRadius: 0.5,
                spreadRadius: 0.5,
              )
            ],
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20))),
      ),
    );
  }
}

class textbox extends StatefulWidget {
  String txt;
  Function on;
  Color color;

  textbox({required this.txt, required this.on, required this.color});

  @override
  State<textbox> createState() => _textboxState();
}

class _textboxState extends State<textbox> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: (size.width / 1.2) / 3,
      height: 60,
      decoration: BoxDecoration(
          color: widget.color,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Text(
            widget.txt,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: Color.fromARGB(129, 128, 7, 7),
            ),
          ),
        ),
      ),
    );
  }
}
