// ignore_for_file: prefer_const_constructors, constant_identifier_names, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class Button extends StatelessWidget {

  static const Dark = Color.fromRGBO(81, 81, 81, 1);
  static const _DEFAULT = Color.fromRGBO(112, 112, 112, 1);
  static const _OPERATION = Color.fromRGBO(255, 158, 13, 1);


  final void Function(String  key) onSubmit;

  final String title;
  final bool big;
  final  Color color;
  final  bool btnZero;

   Button({super.key, required this.title,this.big = false,this.color = _DEFAULT , this.btnZero = false, required this.onSubmit});
   Button.big({super.key, required this.title,this.big = true,this.color = _DEFAULT , this.btnZero = false, required this.onSubmit});
   Button.operation({super.key, required this.title,this.big = false,this.color = _OPERATION, this.btnZero = false, required this.onSubmit});

  const Button.zero({super.key, required this.title,this.big = true,this.color = _DEFAULT, this.btnZero = true, required this.onSubmit});
  @override 
  Widget build(BuildContext context){

    return Expanded(
      flex: big == true?2:1,
      child: Container(
        child: TextButton(
          onPressed: (){ onSubmit(title);},
          style:  TextButton.styleFrom(
            backgroundColor: color,
            shape:  const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(0)) ) ,
          ),
          child: Text(title,
          style:  TextStyle(
            fontSize: btnZero == true ?27:32,
            fontWeight:FontWeight.w300,
            color: Colors.white,
          ),
          ),
          
        ),
      ),
    );

  }
}
