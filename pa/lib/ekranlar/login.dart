import 'package:flutter/material.dart';
import 'package:pa/ekranlar/create.dart';
import 'package:pa/widgets/bottun.dart';
import 'package:pa/widgets/form.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

bool changecolor = false;

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 241, 231, 231),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 241, 231, 231),
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 35,
                    color: Color.fromARGB(136, 128, 7, 7),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Welcome back to the app',
                  style: TextStyle(fontSize: 20),
                ),
                Container(
                  width: size.width,
                  height: size.height,
                  margin: EdgeInsets.only(top: size.width / 8),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 241, 231, 231),
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        child: Text(
                                          'Email',
                                          style: TextStyle(fontSize: 20),
                                        ),
                                      )),
                                ],
                              ),
                            ),
                            GestureDetector(
                                child: Text(
                              'PhoneNumber',
                              style: TextStyle(fontSize: 20),
                            ))
                          ],
                        ),
                      ),
                      SizedBox(
                        height: size.width / 10,
                      ),
                      Text(
                        'Email adress',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w600),
                      ),
                      text_filed(
                        lable: 'Email',
                        icon: null,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Password',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w600),
                      ),
                      text_filed(
                          lable: 'Password', icon: Icon(Icons.visibility)),
                      Row(
                        children: [
                          Checkbox(value: false, onChanged: (bool) {}),
                          Text('Keep me signed in ')
                        ],
                      ),
                      bot(size: size, txt_b: 'Login'),
                      Padding(
                        padding: const EdgeInsets.only(top: 15, bottom: 5),
                        child: Center(
                            child: Text(
                          'or',
                          style: TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(136, 128, 7, 7),
                          ),
                        )),
                      ),
                      GestureDetector(
                          child: Container(
                        child: bot(size: size, txt_b: 'Continue With Google'),
                      )),
                      SizedBox(
                        height: 7,
                      ),
                      Center(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => create()));
                          },
                          child: Text(
                            'Create an account',
                            style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(123, 100, 4, 4),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
