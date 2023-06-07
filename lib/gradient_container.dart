import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

/// Widgets being used
/// Container
/// BoxDecoration
/// LinearGradient
/// Center
/// Image - Image.assets() helps you display a local image
///   This has to be in the asset section of pubspec.yaml
/// Column - Takes all the vertical space, even inside a center will start at top
///   Can fix by setting mainAxisSize to min
/// Button three types: ElevatedButton, OutlineButton. TextButton\
/// Sized box: can be used to just space out other widgets

//final is set to a variable that is not going to change
//const is same as final but better for flutter
//Set the value at compile time so it's optimized
//Won't have to be calculated at run time
const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

//Custom widget
//StatelessWidget great for widget that takes in inputs and outputs widgets
//StatefulWidgets that can change internally and changes the UI
//If the data changes inside
class GradientContainer extends StatelessWidget {
  //Different ways to do constructor to send key to super
  //GradientContainer({key}) : super(key: key);
  //const GradientContainer({super.key});

  //Since we need colors to have a value we need to mark it as requeired
  //A named argument is optional by default
  const GradientContainer({super.key, required this.colors});

  //Multiple constructors
  //constructor with default values set already
  const GradientContainer.purple({super.key})
      : colors = const [Colors.deepPurple, Colors.indigo];

  const GradientContainer.orage({super.key})
      : colors = const [Colors.deepOrange, Color.fromARGB(255, 235, 175, 157)];

  //const is a flutter optimization
  //Tells flutter it can save object in memory and can be reused with a reference to it
  //Instead of recreating it in memory

  final List<Color> colors;

  //override says it is overriding from the extended class
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(child: DiceRoller()),
    );
  }
}
