import 'dart:ffi';

import 'package:flutter/material.dart';

class HomeScreenBody extends StatefulWidget {
  @override
  State<HomeScreenBody> createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends State<HomeScreenBody> {
  List<int> items = List.generate(5, (index) => index);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      padding: EdgeInsets.all(5),
      itemBuilder: (BuildContext context, int index) {
        return Dismissible(
            background: Container(
              color: Colors.green,
            ),
            secondaryBackground: Container(color: Colors.red),
            key: ValueKey(items[index]),
            onDismissed: (DismissDirection directio) {
              setState(() {
                items.removeAt(index);
              });
            },
            child: ListTile(
                title: Text(
              'Item ${items[index]}',
            )));
      },
    );
  }
}
