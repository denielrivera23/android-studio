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
          mainAxisSize: MainAxisSize.min,  // Ensures Column takes minimum space needed
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

