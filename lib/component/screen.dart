// ignore_for_file: avoid_print, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'display.dart';
import 'keyboard.dart';
import '../models/memory.dart';

class Screen extends StatefulWidget{

  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  final Momory momory = Momory();

     _onSubmitKey(String key){

        setState((){

          momory.applyCommand(key);

        } );
     

    }

 @override
  Widget build(BuildContext context){

    SystemChrome.setPreferredOrientations(
      [
        DeviceOrientation.portraitUp
      ]
    );

    
    return   MaterialApp(
      home: Column(
        children: [
          Display(title:momory.value,),
          KeyBoard(onSubmit: _onSubmitKey),
         
        ],
      ),
    );
  }
} 

