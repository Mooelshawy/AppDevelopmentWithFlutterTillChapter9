import 'package:flutter/material.dart';


class PageViewThree extends StatelessWidget {

  
  @override
  Widget build(BuildContext context) {
     return Container(
        margin: EdgeInsets.all(10),
        color: Colors.amber,
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