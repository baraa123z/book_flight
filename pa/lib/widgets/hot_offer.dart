import 'package:flutter/material.dart';

class Hot_offer extends StatefulWidget {
  const Hot_offer({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  State<Hot_offer> createState() => _Hot_offerState();
}

class _Hot_offerState extends State<Hot_offer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: widget.size.width,
      height: widget.size.height / 3.5,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 241, 231, 231),
          borderRadius: BorderRadius.all(Radius.circular(15))),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Hot Offer',
                  style: TextStyle(
                      fontSize: 20, color: Color.fromARGB(255, 100, 4, 4)),
                ),
                Text(
                  'See all',
                  style: TextStyle(
                      fontSize: 20, color: Color.fromARGB(255, 100, 4, 4)),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                cart(
                  image: 'images/master.png',
                  txt: '15% OFF',
                  descption: '15% discount \n with mastercard ',
                  descption_2: 'tdtjghjgjg \n ddykdhfuyfuyfuy',
                ),
                cart(
                  image: 'images/master.png',
                  txt: '15% OFF',
                  descption: '15% discount \n with mastercard ',
                  descption_2: 'tdtjghjgjg \n ddykdhfuyfuyfuy',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class cart extends StatefulWidget {
  String image;
  String txt;
  String descption;
  String descption_2;

  cart(
      {required this.image,
      required this.txt,
      required this.descption,
      required this.descption_2});

  @override
  State<cart> createState() => _cartState();
}

class _cartState extends State<cart> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15))),
      margin: EdgeInsets.only(top: 20, left: 10),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Color.fromARGB(61, 128, 7, 7),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    bottomLeft: Radius.circular(15))),
            width: size.width / 3.3,
            height: size.height / 5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 2, left: 10, right: 10),
                  child: Image(
                    image: AssetImage(
                      widget.image,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Center(
                    child: Text(
                  widget.txt,
                  style: TextStyle(fontSize: 20),
                ))
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15),
                    bottomRight: Radius.circular(15))),
            width: size.width / 1.75,
            height: size.height / 5,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    widget.descption,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    widget.descption_2,
                    style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(249, 207, 201, 201)),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
