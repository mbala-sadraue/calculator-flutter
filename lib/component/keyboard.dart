// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'meta_component.dart';
import 'button.dart';
class KeyBoard extends StatelessWidget{

final  void Function(String key) onSubmit;
  
  const KeyBoard({super.key, required this.onSubmit});

  @override 

  Widget build(BuildContext context){


    return Container(
      height: 470,
      color: const Color.fromRGBO(0, 0, 0, 1),
      margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
      child: Column(
        children: [
           RowButton( buttons:[ 
            Button.big(title:'AC', color: Button.Dark,onSubmit: onSubmit),
            Button(title:'%',color: Button.Dark,onSubmit: onSubmit),
            Button.operation(title:'/',onSubmit: onSubmit)]
          ),
          SizedBox(height: 1,),
           RowButton( buttons:[ 
            Button(title:'7',onSubmit: onSubmit),
            Button(title:'8',onSubmit: onSubmit),
            Button(title:'9',onSubmit: onSubmit,),
            Button.operation(title:'+',onSubmit: onSubmit,)]
          ),
          SizedBox(height: 1,),
          RowButton( buttons:[ 
            Button(title:'4',onSubmit: onSubmit,),
            Button(title:'5',onSubmit: onSubmit,),
            Button(title:'6',onSubmit: onSubmit,),
            Button.operation(title:'x',onSubmit: onSubmit,)],
            
          ),
          SizedBox(height: 1,),
          RowButton( buttons:[ 
            Button(title:'1',onSubmit: onSubmit),
            Button(title:'2',onSubmit: onSubmit),
            Button(title:'3',onSubmit: onSubmit),
            Button.operation(title:'-',onSubmit: onSubmit)]
          ),
          SizedBox(height: 1,),
          RowButton( buttons:[ 
            Button.zero(title:'0',onSubmit: onSubmit),
            Button(title:'.',onSubmit: onSubmit),
            Button.operation(title:'=',onSubmit: onSubmit)]
          ),
        ]),
    );
  }

}