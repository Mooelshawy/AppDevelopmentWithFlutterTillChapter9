import 'package:flutter/material.dart';

class TabTwo extends StatelessWidget {
    var list = [
    'first1',
    'first2',
    'first3',
    'first4',
    'first5',
    'first6',
    'first7',
    'first8',
    'first9',
    'first11',
    'first22',
    'first33',
    'first44',
    'first55',
    'first66',
    'first77',
    'first88',
    'first99',
    'first99',
    'first99',
    'first99',
    'first99',
    'first99',
    'first99',
    'first99',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        
           itemBuilder: (BuildContext context ,  int index) => 
              Card(
          child: Text(list[index]),
        ) , 
        itemCount: list.length 
          , gridDelegate:
           SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),  
           ),
    );
  }
}
