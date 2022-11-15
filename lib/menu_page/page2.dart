import 'package:flutter/material.dart';
import 'package:flutter_gestures_app/menu/menu.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Page2',
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        color: Colors.indigoAccent,
        child: LimitedBox(
            child: ListView(
          children: [
            FittedBox(
              alignment: Alignment.center,
              fit: BoxFit.cover,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Image.asset('assets/image/angry-bull-head.jpg'),
            ),
            const Padding(
              padding: EdgeInsets.all(15),
            ),
            Divider(
              color: Colors.black,
              height: 15,
              thickness: 10,
              endIndent: 10.0,
              indent: 5.0,
            ),
            FittedBox(
              fit: BoxFit.contain,
              child: Image.asset('assets/image/angry-bull-head.jpg'),
            ),
            Divider(
              color: Colors.black,
              height: 15,
              thickness: 10,
              endIndent: 10.0,
              indent: 5.0,
            ),
            FittedBox(
              fit: BoxFit.fill,
              child: Image.asset('assets/image/angry-bull-head.jpg'),
            ),
            Divider(
              color: Colors.black,
              height: 15,
              thickness: 10,
              endIndent: 10.0,
              indent: 5.0,
            ),
            FittedBox(
              fit: BoxFit.fitHeight,
              child: Image.asset('assets/image/angry-bull-head.jpg'),
            ),
            Divider(
              color: Colors.black,
              height: 15,
              thickness: 10,
              endIndent: 10.0,
              indent: 5.0,
            ),
            FittedBox(
              fit: BoxFit.fitWidth,
              child: Image.asset('assets/image/angry-bull-head.jpg'),
            ),
            Divider(
              color: Colors.black,
              height: 15,
              thickness: 10,
              endIndent: 10.0,
              indent: 5.0,
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Image.asset('assets/image/angry-bull-head.jpg'),
            ),
            Divider(
              color: Colors.black,
              height: 15,
              thickness: 10,
              endIndent: 10.0,
              indent: 5.0,
            ),
            Divider(
              color: Colors.black,
              height: 15,
              thickness: 10,
              endIndent: 10.0,
              indent: 5.0,
            ),
            
          ],
        )),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.purpleAccent,
        onPressed: () {},
      ),
    );
  }
}
