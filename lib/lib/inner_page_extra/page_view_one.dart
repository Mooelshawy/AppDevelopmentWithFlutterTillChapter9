import 'package:flutter/material.dart';

class PageViewOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
       
        Row(
          crossAxisAlignment:CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            
             Container(
               margin: EdgeInsets.all(10),
          color: Colors.cyan,
          width: 150,
          height: 150,
        ),
             Container(
               margin: EdgeInsets.all(10),
          color: Colors.blueAccent,
           width: 150,
          height: 150,
        ),
          ],
        ),
        Container(
              
          color: Colors.lightBlue,
          width: 250,
          height: 250,
          child: Text('page view',textAlign: TextAlign.center,style: TextStyle(
            fontSize: 25,
            color: Colors.black
          ),),
        ),
        Row(
          crossAxisAlignment:CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            
             Container(
               margin: EdgeInsets.all(10),
          color: Colors.cyan,
          width: 150,
          height: 200,
        ),
             Container(
               margin: EdgeInsets.all(10),
          color: Colors.blueAccent,
           width: 150,
          height: 200,
        ),
        
          ],
        ),
        RawMaterialButton(onPressed: (){} ,child: Text('data'), )
      ],
    );
  }
}
