// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'component/screen.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget{


  const MyApp({super.key});

  @override
  Widget build(BuildContext context){

    return const MaterialApp(

      home:  Screen(),
    );
      
  }
}