import 'package:flutter/material.dart';
import 'package:flutter_gestures_app/menu_page/buttons.dart';
import 'package:flutter_gestures_app/menu_page/page1.dart';
import 'package:flutter_gestures_app/menu_page/tab_navigation.dart';

import '../menu_page/page2.dart';
import '../menu_page/page3.dart';
import '../menu_page/page5.dart';

class ListDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.blueAccent,
      child: ListView(
        children: [
          DrawerHeader(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image(
                  image: AssetImage("assets/image/angry-bull-head.jpg"),
                  fit: BoxFit.contain,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                    alignment: Alignment.bottomLeft,
                    child: Expanded(
                      
                      child: Text(
                        'Drawer Header',
                        textAlign: TextAlign.start,
                        softWrap: true,
                      
                        style: TextStyle(
                            fontSize: 15.0, 
                            fontWeight: FontWeight.bold
                            ),
                      ),
                    ))
              ],
            ),
          ),
          ListTile(
            title: Text('Page 1'),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Page1()));
              //Navigator.pushNamed(context, '/first');
            },
          ),
          ListTile(
              title: Text('Page 2'),
              onTap: () {
                //navigate to second screen when click put name you create it in route rules
                // in MaterialApp tag in main dart file
                Navigator.pushNamed(context, '/second');
              }),
          ListTile(
            title: Text('Page 3'),
            onTap: () {
              Navigator.pushNamed(context, '/third');
            },
          ),
          ListTile(
            title: Text('Page 4'),
            onTap: () {
              Navigator.pushNamed(context, '/fourth');
            },
          ),
          ElevatedButton(
            onPressed: () {
              // Navigator.push(context,
              //  MaterialPageRoute(builder: (context) => Page5()));

              Navigator.pushNamed(context, '/fivth');
            },
            // style: ButtonStyle(elevation: MaterialStateProperty(12.0 )),
            style: ElevatedButton.styleFrom(
                elevation: 12.0,
                textStyle: const TextStyle(color: Colors.white)),
            child: const Text('page 5'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/sixPage');
            },
            // style: ButtonStyle(elevation: MaterialStateProperty(12.0 )),
            style: ElevatedButton.styleFrom(
                elevation: 12.0,
                textStyle: const TextStyle(color: Colors.white)),
            child: const Text('page 6'),
          ),
          OutlinedButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all<OutlinedBorder>(StadiumBorder()),
              side: MaterialStateProperty.resolveWith<BorderSide>(
                  (Set<MaterialState> states) {
                final Color color = states.contains(MaterialState.pressed)
                    ? Colors.blue
                    : Colors.red;
                return BorderSide(color: color, width: 2);
              }),
            ),
            onPressed: () {},
            child: Text('page7'),
          ),
          OutlinedButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all<OutlinedBorder>(StadiumBorder()),
              side: MaterialStateProperty.resolveWith<BorderSide>(
                  (Set<MaterialState> states) {
                final Color color = states.contains(MaterialState.pressed)
                    ? Colors.blue
                    : Colors.red;
                return BorderSide(color: color, width: 2);
              }),
            ),
            onPressed: () {},
            child: Text('page8'),
          ),
          OutlinedButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all<OutlinedBorder>(StadiumBorder()),
              side: MaterialStateProperty.resolveWith<BorderSide>(
                  (Set<MaterialState> states) {
                final Color color = states.contains(MaterialState.pressed)
                    ? Colors.blue
                    : Colors.red;
                return BorderSide(color: color, width: 2);
              }),
            ),
            onPressed: () {},
            child: Text('page9'),
          ),
          OutlinedButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all<OutlinedBorder>(StadiumBorder()),
              side: MaterialStateProperty.resolveWith<BorderSide>(
                  (Set<MaterialState> states) {
                final Color color = states.contains(MaterialState.pressed)
                    ? Colors.blue
                    : Colors.red;
                return BorderSide(color: color, width: 2);
              }),
            ),
            onPressed: () {},
            child: Text('page 10'),
          ),
        ],
      ),
    );
  }
}
