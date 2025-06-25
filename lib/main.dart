import 'dart:collection';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Profile()));
}

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('bike parts'),
        backgroundColor: Color.fromARGB(255, 224, 223, 230),
      ),
      body: Container(
        margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
        child: Column(
          children: [
            Center(
              child: Text(
                'User Profile',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ),
            Icon(Icons.account_circle,
                size: 100, color: Color.fromARGB(255, 171, 133, 133)),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(30, 20, 0, 0),
                  child: Row(
                    children: [
                      Container(
                        child: Text(
                          'Name:',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                        child: Text('Chris Deniel Rivera'),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(30, 10, 0, 0),
                  child: Row(
                    children: [
                      Container(
                        child: Text(
                          'Email:',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                        child: Text('denielrivera652@gmail.com'),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(30, 10, 0, 0),
                  child: Row(
                    children: [
                      Container(
                        child: Text(
                          'Company:',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                        child: Text('Batangas State University TNEU Balayan'),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(30, 10, 0, 0),
                        child: Text(
                          'Contact Number:',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                        child: Text('09974617733'),
                      ),
                    ],
                  ),
                ),
                Container(
                    child: Column(children: [
                  Container(
                    width: 350,
                    margin: EdgeInsets.fromLTRB(0, 250, 0, 0),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Logout',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 203, 40, 40),
                        ),
                      ),
                    ),
                  ),
                ]))
              ],
            )
          ],
        ),
      ),
    );
  }
}
