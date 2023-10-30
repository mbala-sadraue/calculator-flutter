// ignore_for_file: prefer_const_constructors, constant_identifier_names

import 'package:flutter/material.dart';
import 'button.dart';



class RowButton extends StatelessWidget{


 final List<Button> buttons ;
 const  RowButton({super.key, required this.buttons});

 @override
 Widget build(BuildContext context){


  return Expanded(
          child:Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: buttons.fold(<Widget>[],( list, button){

              list.isEmpty ? list.add(button) : list.addAll([SizedBox(width: 1),button]);
              return list;

            })
         ),
         );
   

 }

}