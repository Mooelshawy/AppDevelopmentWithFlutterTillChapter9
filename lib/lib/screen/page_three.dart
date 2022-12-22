import 'package:flutter/material.dart';

import '../menu/my_drawer.dart';

class PageThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        
        appBar: AppBar(
            title: Text(
              'Page Three ',
              style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
            centerTitle: false,
            elevation: 1,
            actions: [
              IconButton(
                icon: Icon(Icons.file_upload),
                onPressed: () => {print("Click on upload button")},
              ),
              IconButton(
                  icon: Icon(Icons.settings),
                  onPressed: () => {print("Click on settings button")}),
              PopupMenuButton(
                icon: Icon(Icons.share),
                itemBuilder: (context) => [
                  PopupMenuItem(
                    value: 1,
                    child: Text("Facebook"),
                  ),
                  PopupMenuItem(
                    value: 2,
                    child: Text("Instagram"),
                  ),PopupMenuItem(
                    value: 3,
                    child: Text("twitter"),
                  ),PopupMenuItem(
                    value: 4,
                    child: Text("Qoura"),
                  ),PopupMenuItem(
                    value: 5,
                    child: Text("WahtsApp"),
                  ),
                ],
              )
            ]),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Container(
              height: 200,
              width: 200,
              alignment: Alignment.center,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              foregroundDecoration: BoxDecoration(
                  color: Colors.amber.withOpacity(.5),
                  borderRadius: BorderRadius.all(Radius.circular(200))),
              child: Text('This is first Container in page '),
            ),
            Center(
              child: Material(
                shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    side: BorderSide(color: Colors.yellow, width: 5)),
                color: Colors.black,
                child: Container(
                  height: 300,
                  width: 300,
                ),
              ),
            ),
            Center(
              child: Material(
                shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    side: BorderSide(color: Colors.yellow, width: 5)),
                color: Colors.black,
                child: Container(
                  height: 300,
                  width: 300,
                ),
              ),
            ),
            Align(
                alignment: Alignment.topCenter,
                widthFactor:6.0,
                child: ElevatedButton(child: Text("Button"), onPressed: () {}))
          ],
        ));
  }
}
