// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
class Display extends StatelessWidget{

 final String title;
  const Display({super.key, required this.title});


  @override
  Widget build(BuildContext context){

    return Expanded(
      flex: 1,
      child: Container(
      alignment: Alignment.bottomRight,
        color: Color.fromRGBO(48, 48, 48, 1),
        child: FittedBox(

          child: Text(
          title,
          style:TextStyle(
              decoration: TextDecoration.none,
              fontWeight: FontWeight.w100,
              color: Colors.white,
              fontSize: 50
          ),
          ),
        ),
      ) ,
    );

  }
}