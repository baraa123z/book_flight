import 'package:flutter/material.dart';
import 'package:pa/widgets/bottun.dart';
import 'package:pa/widgets/form.dart';

class personalinfo extends StatefulWidget {
  const personalinfo({super.key});

  @override
  State<personalinfo> createState() => _personalinfoState();
}

class _personalinfoState extends State<personalinfo> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 241, 231, 231),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color.fromARGB(255, 241, 231, 231),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  width: size.width / 3,
                  height: size.width / 3,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 236, 219, 219),
                      shape: BoxShape.circle),
                  child: Image(
                      image: AssetImage(
                        'images/img.png',
                      ),
                      fit: BoxFit.fill),
                ),
              ),
              SizedBox(
                height: 7,
              ),
              Text(
                'Hello traveller ',
                style: TextStyle(fontSize: 20),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Name'),
                    text_filed(
                      lable: 'Name',
                      ic: Icon(Icons.person_2),
                      icon: null,
                    ),
                    Text('Adress'),
                    text_filed(
                      lable: 'Adress',
                      ic: Icon(Icons.person_2),
                      icon: null,
                    ),
                    Text('Passport'),
                    text_filed(
                      lable: 'Passport',
                      ic: Icon(Icons.person_2),
                      icon: null,
                    ),
                    Text('DOB'),
                    text_filed(
                      lable: '',
                      ic: Icon(Icons.person_2),
                      icon: null,
                    ),
                    Text('Name'),
                    text_filed(
                      lable: 'Name',
                      ic: Icon(Icons.person_2),
                      icon: null,
                    ),
                    bot(size: size, txt_b: 'Confirm'),
                    SizedBox(
                      height: 7,
                    ),
                    Center(
                        child: GestureDetector(
                            child: Text(
                      'Skip',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(129, 128, 7, 7),
                      ),
                    )))
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
