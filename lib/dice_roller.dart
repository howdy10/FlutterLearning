import 'package:flutter/material.dart';
import 'dart:math';

//Can be outside of class or in class.
//It doesn't change so can be outside
final randomizer = Random();

//Stateful widgets needs two classes
//Stateful widget is what is called by other to use
//createState will return the private class that has the custom widget
class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  //no build method for stateful Widget

  //Return the state of type statefulWidget name
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

//start to _ this class is private
//flutter requires to be seperate
//extends state of type of custome Widget name
class _DiceRollerState extends State<DiceRoller> {
  //default value
  var currentDiceRoll = 2;

  //function
  void rollDice() {
    //Rerender the front end after you update a variable
    //Inside is where you update the variables
    setState(() {
      //from dart math import
      //This currently keeps recreating a Random object in memory
      //currentDiceRoll = Random().nextInt(6) + 1; //number between 1 - 6

      //This now uses final Random class stored in randomizer
      //Will not create a new object of type random just use the final one
      currentDiceRoll = randomizer.nextInt(6) + 1;

      //print statement for debuging
      //print('Changing image...');
    });
  }

  @override
  Widget build(context) {
    return Column(
      //Default value here is max
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          //$ inside string to inject variable
          'assets/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        //This is similar to adding padding to the next child
        //You just insert an empty widget with a height
        const SizedBox(
          height: 20,
        ),
        TextButton(
          //Ananymous function () {} Can be used to quicly set a funstion
          //Can only be used in the one spot
          //Can set a declared function
          //Adding () means to execute the function
          //No () pass a pointer to the function as a value
          onPressed: rollDice,
          style: TextButton.styleFrom(
              //Can be done with an empty widget
              //padding: const EdgeInsets.only(top: 20),
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 28)),
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}
