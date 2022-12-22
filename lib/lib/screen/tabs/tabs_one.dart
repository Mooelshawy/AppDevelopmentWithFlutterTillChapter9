import 'package:flutter/material.dart';

class TabOne extends StatelessWidget {
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
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
      scrollDirection: Axis.vertical,
      padding: EdgeInsets.all(10),
      itemBuilder: (BuildContext context, int index) {
        return Card(
          child: Text(index.toString()),
        );
      },
      itemCount: list.length,
    ));
  }
}
