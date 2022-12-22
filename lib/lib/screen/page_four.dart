import 'package:flutter/material.dart';
import 'package:state_mangment_chapter_nine/screen/tabs/tabs_host.dart';

import '../menu/my_drawer.dart';

class PageFour extends StatefulWidget {
  @override
  _PageFourState createState() => _PageFourState();
}

class _PageFourState extends State<PageFour> {
  int selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Page Four ',
          style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic),
        ),
        centerTitle: false,
        elevation: 1,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.wifi)),
          IconButton(onPressed: () {}, icon: Icon(Icons.share)),
          IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
        ],
      ),
      body: SafeArea(
        child: SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: ListView(
              children: [
                IndexedStack(
                  alignment: AlignmentDirectional.topCenter,
                  //this is line responsable about replace index to show in stack
                  //index: Index of the child widget will be displayed,
                  //its default value is 0. If the index is null, no child widgets will be displayed.
                  index: this.selectedIndex,
                  sizing: StackFit.loose,
                  children: [
                    Container(
                      height: 150,
                      width: 300,
                      color: Colors.black,
                    ),
                    Container(
                      height: 150,
                      width: 300,
                      color: Colors.yellow,
                    ),
                    Container(
                        height: 150,
                        width: 300,
                        color: Colors.green,
                        child: Center(
                          child: Text('Next One Testing for disable element '),
                        )),
                    Container(
                      height: 150,
                      width: 300,
                      color: Colors.red,
                    ),
                  ],
                ),
                IndexedStack(
                  alignment: AlignmentDirectional.topCenter,
                  //this is line responsable about replace index to show in stack
                  //index: Index of the child widget will be displayed,
                  //its default value is 0. If the index is null, no child widgets will be displayed.
                  index: this.selectedIndex,
                  sizing: StackFit.passthrough,
                  children: [
                    Container(
                      height: 150,
                      width: 300,
                      color: Colors.amber,
                    ),
                    Container(
                      height: 150,
                      width: 300,
                      color: Colors.blueAccent,
                    ),
                    Container(
                      height: 150,
                      width: 300,
                      color: Colors.orangeAccent,
                    ),
                    Container(
                      height: 150,
                      width: 300,
                      color: Colors.tealAccent,
                    ),
                  ],
                ),
                IndexedStack(
                  alignment: AlignmentDirectional.topCenter,
                  //this is line responsable about replace index to show in stack
                  //index: Index of the child widget will be displayed,
                  //its default value is 0. If the index is null, no child widgets will be displayed.
                  index: this.selectedIndex,
                  sizing: StackFit.loose,
                  children: [
                    Container(
                      height: 150,
                      width: 300,
                      color: Colors.purple,
                    ),
                    Container(
                      height: 150,
                      width: 300,
                      color: Colors.lightGreen,
                    ),
                    Container(
                      height: 150,
                      width: 300,
                      color: Colors.pink,
                    ),
                    Container(
                      height: 150,
                      width: 300,
                      color: Colors.indigo,
                    ),
                  ],
                ),
                Align(
                    alignment: Alignment.bottomCenter,
                    widthFactor: 6.0,
                    child: ElevatedButton(
                        child: Icon(Icons.next_plan),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => TabsHost()),
                          );
                        }))
              ],
            )),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.next_plan),
        onPressed: () {
          setState(() {
            if (this.selectedIndex < 3) {
              selectedIndex++;
            } else {
              this.selectedIndex = 0;
            }
          });
        },
      ),
    );
  }
}
