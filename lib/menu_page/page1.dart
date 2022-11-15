import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  List<Map> fetchPeople() {
    return [
      {"first": "Jim", "last": "Halpert"},
      {"first": "Kelly", "last": "Kapoor"},
      {"first": "Creed", "last": "Bratton"},
      {"first": "Dwight", "last": "Schrute"},
      {"first": "Andy", "last": "Bernard"},
      {"first": "Pam", "last": "Beasley"},
      {"first": "Jim", "last": "Halpert"},
      {"first": "Robert", "last": "California"},
      {"first": "David", "last": "Wallace"},
      {"first": "Ryan", "last": "Howard"},
    ];
  }

  @override
  Widget build(BuildContext context) {
    var peopleObjects = fetchPeople();

    return Scaffold(
      appBar: AppBar(
        title: Text('Page One '),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: ListView.builder(
        itemCount: peopleObjects.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: <Widget>[
              ListTile(
                title: Text("${peopleObjects.elementAt(index)}"),
                subtitle: Text("${peopleObjects[index]}"),
                onTap: () {},
              ),
              Text(
                  'ssssssssssssssssssssssssssssssssssssssssssssssss'
                 'ssssssssssssssssssssssssssssssssssssssssssssssssss'
                 'ssssssssssssssssssssssssssssssssssssssssssssssssss'
                 'ssssssssssssssssssssssssssssssssssssssssssssssssssss'),
//a minHeight, a minWidth, a maxHeight, and a maxWidth

              Divider(
                height: 5.0,
                color: Colors.red,
                thickness: 5.0,
              ),

              SizedBox(
            width: 200.0,
            height: 100.0,
            child: Card(
              color: Colors.green,
              child: Center(
                child: Text(
                  'GeeksForGeeks',
                  style: TextStyle(color: Colors.white),
                ), //Text
              ), //Center
            ), //Card
          ),
              
            ],
          );
        },
      ),
    );
  }
}
