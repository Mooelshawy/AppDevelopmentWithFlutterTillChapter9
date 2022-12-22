import 'package:flutter/material.dart';
import 'package:state_mangment_chapter_nine/menu/my_drawer.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text(
          'Home Page ',
          style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic),
        ),
        centerTitle: true,
        elevation: 1,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
                'https://www.freecodecamp.org/news/content/images/size/w2000/2022/04/connor-betts-50rXLuz0Txg-unsplash-1.jpg'),
            Text('image loaded form network')
          ],
        ),
      ),
    );
  }
}
