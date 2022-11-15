import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: EdgeInsets.all(32),
      child: Row(
        children: [
          //if you want the widgets to expand to fill the remaining space? Expanded
          //widget to the rescue
          Expanded(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                padding: EdgeInsets.only(bottom: 8),
                child: Text(
                  'Omran Ahmed Taha Elshawy',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                'Developer for Android ',
                style: TextStyle(
                    color: Colors.white70, fontWeight: FontWeight.bold),
              ),
            ]),
          ),

          Icon(
            Icons.star,
            color: Colors.redAccent,
          ),
          Text('200'),
        ],
      ),
    );

    IntrinsicWidth listOfButton(Color color, IconData icons, String label) {
      return IntrinsicWidth(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.max,
        children: [
          Icon(
            icons,
            color: color,
          ),
          Text(
            label,
            style: TextStyle(fontWeight: FontWeight.bold, color: color),
          )
        ],
      ));
    }

    Color mainColor = Theme.of(context).primaryColorLight;

    //Expandeds will divide the free space among them
    Widget arrangeIcons = Expanded(
        //flex like weight in android divide space as you like
        // property found in Expanded , Flex
        // Expanded(flex: 1, child: SubWidget()),
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        listOfButton(mainColor, Icons.call, 'CALL'),
        listOfButton(mainColor, Icons.near_me, 'ROUTE'),
        listOfButton(mainColor, Icons.share, 'SHARE'),
        listOfButton(mainColor, Icons.ac_unit, 'SHARE2'),
        listOfButton(mainColor, Icons.ac_unit, 'SHARE3')
      ],
    ));

    Widget textSection = const Padding(
      padding: EdgeInsets.all(32),
      child: Text(
        'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
        'Alps. Situated 1,578 meters above sea level, it is one of the '
        'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
        'half-hour walk through pastures and pine forest, leads you to the '
        'lake, which warms to 20 degrees Celsius in the summer. Activities '
        'enjoyed here include rowing, and riding the summer toboggan run.',
        softWrap: true,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Page 3'),
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
        actionsIconTheme: AppBarTheme.of(context).iconTheme,
      ),
      body: Container(
        color: Colors.deepPurpleAccent,
        margin: const EdgeInsets.all(5),
        child: ListView(
          children: [
            Image.asset(
              'assets/image/angry-bull-head.jpg',
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.center,
              fit: BoxFit.contain,
            ),
            const Spacer(flex: 5,),
          
            titleSection,
            arrangeIcons,
            textSection,
            
          ],
        ),
      ),
    );
  }
}
