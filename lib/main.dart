import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

//main method is the start point of flutter
void main() {
  //runApp is the method where the app begins
  runApp(
    //Apps should begin with Material App
    MaterialApp(
      //Scaffold is a widget that helps create a page
      home: Scaffold(
        body: GradientContainer.orage(),
      ),
    ),
  );
}
