import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;
// final is used to restrict now you cant use anything else

class GradientContainer extends StatelessWidget{  //stateless widget is used to create a widget which does not change its state
  const GradientContainer(this.color1, this.color2, {super.key});

  const GradientContainer.purple({super.key})
    : color1 = Colors.purple,
      color2 = Colors.blue;

  final Color color1; //final is used to restrict now you cant use anything else
  final Color color2;

 

  @override //extra metadata to tell the compiler that this is a method of the class
  Widget build(ctx) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment, // for the alignment of the gradient
          end:
              endAlignment, // dont use const becz var can be changed and const means you can use many time if you use
          //many time then how can you change boom
        ),
      ),
      child: Center(
        child:DiceRoller(),
      ),
    );
  }
}
