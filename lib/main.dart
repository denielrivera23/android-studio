import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('BIKE PARTS'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min, 
          children: [
            Text('Chris Deniel'),
            Text('Apacible'),
            Text('Rivera'),
          ],
        ),
      ),

    ),
  ));
}

