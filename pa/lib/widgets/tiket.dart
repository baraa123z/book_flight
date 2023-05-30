import 'package:flutter/material.dart';
import 'package:pa/ekranlar/flight_info.dart';

import 'bottun.dart';

class tiket extends StatefulWidget {
  tiket({super.key, required this.size, required this.show_bot});

  final Size size;
  bool show_bot = true;

  @override
  State<tiket> createState() => _tiketState();
}

class _tiketState extends State<tiket> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(15),
          width: widget.size.width,
          height: widget.size.height / 3.5,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(15))),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        width: 90,
                        height: 60,
                        child: Image(image: AssetImage('images/logo_1.png'))),
                    Text(
                      'IN 230',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      width: widget.size.width / 3.5,
                    ),
                    Row(
                      children: [
                        Text(
                          '01 hr 40 min',
                          style: TextStyle(
                              color: Color.fromARGB(255, 129, 121, 121)),
                        ),
                      ],
                    )
                  ],
                ),
                GestureDetector(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('     5.50\n DEL Delhi'),
                      div(),
                      Text('      7.30 \n CCU (ggg)'),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.business_center_sharp),
                          Text('   Bisiness Class'),
                        ],
                      ),
                      Row(
                        children: [Text('From'), Text('   250 ')],
                      )
                    ],
                  ),
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => flight_det()));
                    },
                    child: widget.show_bot
                        ? bot(
                            size: widget.size,
                            txt_b: 'Check',
                          )
                        : null)
              ],
            ),
          ),
        )
      ],
    );
  }
}

class div extends StatelessWidget {
  const div({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(top: 15),
      width: size.width / 3,
      child: Stack(children: [
        Divider(
          height: 30,
          color: Colors.grey,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 10,
              height: 20,
              decoration:
                  BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
            ),
            Container(
              width: 50,
              height: 30,
              child: Icon(Icons.flight),
              decoration: BoxDecoration(
                  color: Color.fromARGB(123, 100, 4, 4),
                  shape: BoxShape.circle),
            ),
            Container(
              width: 10,
              height: 20,
              decoration:
                  BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
            ),
          ],
        ),
      ]),
    );
  }
}
