import 'package:flutter/material.dart';
import 'package:pa/widgets/bottun.dart';
import 'package:pa/widgets/form.dart';

class create extends StatefulWidget {
  const create({super.key});

  @override
  State<create> createState() => _createState();
}

class _createState extends State<create> {
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
              'Create an Account',
              style: TextStyle(
                fontSize: 35,
                color: Color.fromARGB(136, 128, 7, 7),
              ),
            ),
            SizedBox(
              height: size.width / 5.5,
            ),
            Text(
              'Name',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
            ),
            text_filed(
              lable: 'Name',
              icon: null,
            ),
            Text(
              'Email',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
            ),
            text_filed(
              lable: 'Email',
              icon: null,
            ),
            Text(
              'Password',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
            ),
            text_filed(
              lable: 'password',
              icon: Icon(Icons.visibility),
            ),
            GestureDetector(
                onTap: () {},
                child: Container(
                    margin: EdgeInsets.only(top: size.width / 14),
                    child: bot(size: size, txt_b: 'Sign up'))),
            Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 25),
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
              height: 30,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Already have an account?'),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    'Sign in here',
                    style: TextStyle(
                      color: Color.fromARGB(136, 128, 7, 7),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}
