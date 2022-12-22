import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20), bottomRight: Radius.circular(20))),
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Colors.pink),
            accountName: Text("Abass Makinde"),
            accountEmail: Text("abs@gmail.com"),
            currentAccountPicture: GestureDetector(
              child: CircleAvatar(
                child: Text(
                  "AM",
                  style: TextStyle(
                      color: Colors.pink,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                ),
                backgroundColor: Colors.white,
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              onTap: () {
                Navigator.pushNamed(context, '/home');
              },
              leading: Icon(Icons.home, color: Colors.pink),
              title: Text("Home Page"),
            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              onTap: () {
                Navigator.pushNamed(context, '/pageone');
              },
              leading: Icon(Icons.person, color: Colors.black),
              title: Text("Page One"),
            ),
          ),
          InkWell(
            onTap: null,
            child: ListTile(
              onTap: () {
                Navigator.pushNamed(context, "/pagetwo");
              },
              leading: Icon(Icons.home_filled, color: Colors.red),
              title: Text("Page Two"),
            ),
          ),
          InkWell(
            onTap: null,
            child: ListTile(
              onTap: () {
                Navigator.pushNamed(context, "/pagethree");
              },
              leading: Icon(Icons.home_max, color: Colors.red),
              title: Text("Page Three"),
            ),
          ),
          InkWell(
            onTap: null,
            child: ListTile(
              onTap: () {
                Navigator.pushNamed(context, "/pagefour");
              },
              leading: Icon(Icons.home_outlined, color: Colors.red),
              title: Text("Page Four"),
            ),
          ),
          InkWell(
            onTap: null,
            child: ListTile(
              onTap: () {
                Navigator.pushNamed(context, "/pagefive");
              },
              leading: Icon(Icons.near_me, color: Colors.red),
              title: Text("Page Five"),
            ),
          ),
          InkWell(
            onTap: null,
            child: ListTile(
              onTap: () {
                Navigator.pushNamed(context, "/pagesix");
              },
              leading: Icon(Icons.access_alarm, color: Colors.red),
              title: Text("Page Six"),
            ),
          ),
          InkWell(
            onTap: null,
            child: ListTile(
              onTap: () {
                Navigator.pushNamed(context, "/pageseven");
              },
              leading: Icon(Icons.api, color: Colors.red),
              title: Text("Page Seven"),
            ),
          ),
          InkWell(
            onTap: null,
            child: ListTile(
              onTap: () {
                Navigator.pushNamed(context, "/pageeight");
              },
              leading: Icon(Icons.alternate_email_sharp, color: Colors.red),
              title: Text("Page Egiht"),
            ),
          ),
          InkWell(
            onTap: null,
            child: ListTile(
              onTap: () {
                Navigator.pushNamed(context, "/pagenine");
              },
              leading: Icon(Icons.animation_sharp, color: Colors.red),
              title: Text("Page Nine"),
            ),
          ),
          InkWell(
            onTap: null,
            child: ListTile(
              onTap: () {
                Navigator.pushNamed(context, "/pageten");
              },
              leading: Icon(Icons.aod_outlined, color: Colors.red),
              title: Text("Page Ten"),
            ),
          ),
          Divider(),
          InkWell(
            onTap: null,
            child: ListTile(
              leading: Icon(Icons.help, color: Colors.green),
              title: Text("About"),
            ),
          ),
          InkWell(
            onTap: null,
            child: ListTile(
              leading: Icon(
                Icons.power_settings_new,
                color: Colors.black,
              ),
              title: Text("Log out"),
            ),
          )
        ],
      ),
    );
  }
}
