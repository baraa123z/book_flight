import 'package:flutter/material.dart';
import 'package:pa/widgets/bottun.dart';
import 'package:pa/widgets/tiket.dart';

import '../widgets/form.dart';

class flight_det extends StatefulWidget {
  const flight_det({super.key});

  @override
  State<flight_det> createState() => _flight_detState();
}

class _flight_detState extends State<flight_det> {
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
            'Flight details',
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w400,
                color: Color.fromARGB(255, 100, 4, 4)),
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                Container(
                  child: Image(image: AssetImage('images/logo_1.png')),
                  width: size.width,
                  height: size.width / 3,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15))),
                ),
                Divider(
                  color: Colors.grey,
                ),
                Container(
                  width: size.width,
                  height: size.width / 4,
                  color: Colors.white,
                  child: Container(
                    child: Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('     5.50\n DEL Delhi'),
                          div(
                            size: size,
                          ),
                          Text('      7.30 \n CCU (ggg)'),
                        ],
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
                            ),
                          ],
                        ),
                      ),
                    ]),
                  ),
                ),
                Divider(),
                Container(
                  width: size.width,
                  height: size.width / 3.5,
                  color: Colors.white,
                  child: Row(
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
                ),
                Divider(),
                Container(
                  child: Center(
                      child: Text(
                    'Price \$230',
                    style: TextStyle(fontSize: 40),
                  )),
                  width: size.width,
                  height: size.width / 3.5,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15))),
                ),
                Container(
                  color: Color.fromARGB(255, 241, 231, 231),
                  child: Row(
                    children: [
                      Expanded(child: bot(size: size, txt_b: 'Cansel')),
                      Expanded(child: bot(size: size, txt_b: 'Confirm'))
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class div extends StatelessWidget {
  const div({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
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
