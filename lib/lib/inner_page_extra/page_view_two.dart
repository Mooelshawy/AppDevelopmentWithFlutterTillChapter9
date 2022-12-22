import 'package:flutter/material.dart';



class PageViewTwo extends StatelessWidget {

  
  @override
  Widget build(BuildContext context) {
     return Container(
        margin: EdgeInsets.all(10),
        color: Colors.redAccent,
        height: MediaQuery.of(context).size.height,
        child:Center(
          child: Text(
            'Page One ',
            style: TextStyle(
              fontSize: 50,
              color: Colors.white,
            ),
          ),
        ),
    );
  }
}