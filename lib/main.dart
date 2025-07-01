import 'package:flutter/material.dart';
import 'package:untitled/pages/AddParts.dart';
import 'package:untitled/pages/Dashboard.dart';
import 'package:untitled/pages/ListItems.dart';

void main() {
  runApp(MaterialApp(
   routes: {

    
    '/': (context) => ListItems(),
    '/add': (context) => AddParts(),

   },
  ));
}

