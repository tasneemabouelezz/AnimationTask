//import 'package:ani/animation.dart';
import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';

import 'AnimationPage.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override  Widget build (BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home:AnimationPage(),
    );
  }
}