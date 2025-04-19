import 'package:flutter/material.dart'; //here import is udes to import code and a package from flutter inside material dart / means go more inside
import 'package:first_app/gradient_container.dart';
void main() {
  //void is return type main is the fn name main is the start excecuting
  //body of function
  runApp(
   const MaterialApp(
      home: Scaffold(
        body: GradientContainer.purple(),
      ),
    ),
  ); //this is the function given by () //calling a function runapp comes from flutter frame work
  // dependices are used to render and use those function which are made by flutter framework
  //Material aap is a core widgets or for generally its class inside runApp its a value which is used to pass the value
  // named arg is of amny type but its initial to put name arg in side material app
  // const used to reuse the widget and its a constructor of material app use in higher priority place only like in top
  //lets add more widgets and design like scaffold
  //right click on text and refactor and extract widget to make it a widget
  //widgets are objects and those are data structure in mrmory
  //always try to make a classes to reuse the widgets and other things
}
//use capital frst letetr or _ to name a class
// beforre any function the word written is return type
// use different file for different class for easy use and read and work.
