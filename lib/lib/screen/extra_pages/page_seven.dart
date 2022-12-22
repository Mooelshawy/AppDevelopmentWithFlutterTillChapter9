import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class PageSeven extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        centerTitle: true,
        elevation: 10,
        systemOverlayStyle: SystemUiOverlayStyle.light,
      
        backgroundColor: Colors.blueGrey[900],
        title: Text(
          'I Am Rich'
        ),
        
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage('assets/images/diamond.png'),
            )
          ],
        ),
      ),
    );
  }
}