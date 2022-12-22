import 'dart:collection';

import 'package:flutter/material.dart';

import '../menu/my_drawer.dart';

class PageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text(
          'Page Two ',
          style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic),
        ),
        centerTitle: true,
        elevation: 1,
      ),
      body:
        
         ListView(
          children: [
            Container(
                height: 150,
                width: 150,
                child: Card(
                  borderOnForeground: true,
                  color: Colors.blue,
                  elevation: 5.0,
                  margin: EdgeInsets.all(5),
                  shadowColor: Colors.deepOrange,
                  child: Image.asset('assets/images/more.png'),
                )),
            Divider(
              color: Colors.black,
              thickness: 10,
            ),
            Container(
                height: 150,
                width: 150,
                child: Stack(
                  children: [
                    
                    Container(
                     
                      color: Colors.blue,
                      margin: EdgeInsets.all(5),
                      
                    ),
                    Container(
                     
                      color: Colors.amber,
                      
                      margin: EdgeInsets.all(10),
                     
                    ),
                    Container(
                      color: Colors.red,
                      margin: EdgeInsets.all(15),
                    ),
                  ],
                )),
                
            Divider(
              color: Colors.black,
              thickness: 10,
            ),
            Container(
                height: 150,
                width: 150,
                child: Image(
                    alignment: Alignment.topLeft,
                    image: AssetImage('assets/images/video.png'))),
            Divider(
              color: Colors.black,
              thickness: 10,
            ),
            Container(
              height: 150,
              width: 150,
              child: Image.asset('assets/images/helping-hand.png'),
            ),
            Divider(
              color: Colors.black,
              thickness: 10,
            ),
            Container(
              height: 150,
              width: 150,
              child: Image.asset('assets/images/broken-cable.png'),
            ),
            Divider(
              color: Colors.black,
              thickness: 10,
            ),
            Container(
              height: 150,
              width: 150,
              child: Image.asset('assets/images/alpha_icon-playstore.png'),
            ),
          ],
        )
        
     
    );
  }
}
