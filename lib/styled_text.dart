import 'package:flutter/material.dart';

/// Widgets being used
/// Text
/// TextStyle

//Custome Widget
class StyledText extends StatelessWidget {
  //There are two types of arguments in a method
  //Positional: your normal arguments inside () that have to be sent in that order
  //named: These are variables inside {} and can be in any order when called
  //text is positional, super.key is named
  //const StyledText(String text, {super.key}) : outputText = text;

  //If text stays as String text
  //remove const since it has a dynamic variable
  //StyledText(this.text, {super.key});

  //Can add const back since class variable is now final, and will never change
  //The widget will always be the same object after it is inizialized
  //And dart can access it without creating a new one at runtime
  const StyledText(this.text, {super.key});

  //If you don't assign the value got practice to declare the type
  //Can set to final since this value will only be set once
  //At creating of the widget
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 28.0,
      ),
    );
  }
}
