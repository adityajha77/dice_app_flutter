import 'package:flutter/material.dart';
import 'dart:math'; 

final randomizer = Random(); //this is a function which is used to generate a random number between 1 and 6
class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {          //use<> to create a state of the class
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller>{

   var activeDiceImage = 'assets/images/dice-1.png'; //this is a variable which is used to store the image of dice

  void rollDice() {
    setState(() {
      var randomNumber = randomizer.nextInt(6) + 1; //this is a function which is used to generate a random number between 1 and 6
      activeDiceImage = 'assets/images/dice-$randomNumber.png'; //this is a variable which is used to store the image of dice
    }); //$randomNumber is used to get the value of random number and use it in the string
   //this is a function which is used to change the image of dice
  }

  @override
  Widget build(ctx){
    return  Column(
          mainAxisSize:
              MainAxisSize.min, // Optional: makes it take only as much space as needed
          children: [
            Image.asset(activeDiceImage, width: 300),
            const SizedBox(
              height: 20,
            ), // Optional spacing between image and button
            TextButton(onPressed: rollDice, child: const Text('Roll Dice',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ))),
          ],
        );

  }
}