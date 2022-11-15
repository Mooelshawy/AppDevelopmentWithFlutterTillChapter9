import 'package:flutter/material.dart';

class TabNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,

      //this is default controller for Tab navigation
      //controller create by framwork

//content for  tab page
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Tab Navigation',
            style: TextStyle(
                color: Colors.amberAccent,
                fontSize: 25.0,
                fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,

          //this attribute for divide Tab Bar

          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.directions_car),
                
                ),
              Tab(icon: Icon(Icons.directions_transit)),
              Tab(icon: Icon(Icons.directions_bike)),
              Tab(icon: Icon(Icons.directions_bike)),
            ],
          ),
        ),
      ),
    );
  }
}
