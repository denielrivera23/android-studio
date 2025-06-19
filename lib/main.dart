import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('BIKE PARTS'),
        backgroundColor: Color.fromARGB(255, 247, 86, 86),
      ),
      body: Column(
      
        children: [
          
          Container(
            margin: EdgeInsets.all(10),
            color: Colors.red,
            child:Row(
              children: [
                Text('Name:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 118, 208, 33),
                  fontSize: 20,
                ),
                ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child:(
              Text('Deniel Rivera',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 253, 252, 252),
                fontSize: 20,
              ),
              )
            )
          )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 50, vertical: 50),
            color: Color.fromARGB(255, 0, 255, 0),
            child:Row(
              children: [
                Text('Age:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 228, 64, 64),
                  fontSize: 20,
                ),
                ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child:(
              Text('21 years old',
               style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 253, 252, 252),
                fontSize: 20,
              ),
              
              )
            )
          )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(35, 35, 35, 35),
           color: Colors.blue,
            child:Row(
              children: [
                Text('Gender:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 228, 64, 64),
                  fontSize: 20,
                ),
                ),
          
          Container(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child:(
              Text('LALAKE AKO',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 34, 34, 34),
                fontSize: 20,
                )
              )
            )
          ),
         
              ],
            ),
          ),
        ],
      ),  

    ),
  ));
}

