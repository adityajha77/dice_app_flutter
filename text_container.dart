import 'package:flutter/material.dart';

class TextContainer extends StatelessWidget{
  const TextContainer(this.text ,{super.key}); //constructor of the class and super is used to call the constructor of the parent class
  
  final String text;
  
  @override //extra metadata to tell the compiler that this is a method of the class
  Widget build(ctx){
    return Text(
      text,
              style: const TextStyle(
                color: Colors.amber,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            );
  }

}
