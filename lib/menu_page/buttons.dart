import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Button Type in Flutter ',
            style: TextStyle(
                color: Colors.white70,
                fontSize: 25.0,
                fontWeight: FontWeight.bold),
          ),
        ),
        body: Center(
            /**
           * If you want the children of a Column to all be the same
width but not necessarily the entire width of the screen, use the
IntrinsicWidth widget. With crossAxisAlignment.stretch, they all
stretch to the maximum width (Figure 6-16), but wrapped in an
IntrinsicWidth, they’ll all be the same size as the largest widget
not scrolloable 
           */
            child: ListView(
                children: [
                IntrinsicWidth(
                
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,

                    children: [
                      TextButton(
                        style: TextButton.styleFrom(
                          primary: Colors.red, // foreground
                        ),
                        onPressed: () {},
                        child: Text('TextButton with custom foreground'),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red, // background
                          onPrimary: Colors.white, // foreground
                        ),
                        onPressed: () {},
                        child: Text(
                            'ElevatedButton with custom foreground/background'),
                      ),
                      TextButton(
                        style: ButtonStyle(
                          overlayColor:
                              MaterialStateProperty.resolveWith<Color?>(
                                  (Set<MaterialState> states) {
                            if (states.contains(MaterialState.focused))
                              return Colors.red;
                            if (states.contains(MaterialState.hovered))
                              return Colors.green;
                            if (states.contains(MaterialState.pressed))
                              return Colors.blue;
                            return null; // Defer to the widget's default.
                          }),
                        ),
                        onPressed: () {},
                        child: Text('TextButton with custom overlay colors'),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(onSurface: Colors.red),
                        onPressed: () {},
                        child:
                            Text('ElevatedButton with custom disabled colors'),
                      ),
                      OutlinedButton(
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all<OutlinedBorder>(
                              StadiumBorder()),
                          side: MaterialStateProperty.resolveWith<BorderSide>(
                              (Set<MaterialState> states) {
                            final Color color =
                                states.contains(MaterialState.pressed)
                                    ? Colors.blue
                                    : Colors.red;
                            return BorderSide(color: color, width: 2);
                          }),
                        ),
                        onPressed: () {},
                        child:
                            Text('OutlinedButton with custom shape and border'),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Container(
                          color: Colors.green,
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20),
                          child: const Text(
                            'Flat Button',
                            style:
                                TextStyle(color: Colors.white, fontSize: 13.0),
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        // style: ButtonStyle(elevation: MaterialStateProperty(12.0 )),
                        style: ElevatedButton.styleFrom(
                            elevation: 12.0,
                            textStyle: const TextStyle(color: Colors.white)),
                        child: const Text('Elevated Button'),
                      ),
                      Align(
                        alignment: Alignment.center,
                    
                      
                        child: Image.network('https://flutterrdart.com/wp-content/uploads/2018/12/Flutter-Raised-Button-Example.png'
                        ,fit: BoxFit.contain,
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        ),
                      ),
                      Container(
                        height: 90,
                        width: 90,
                        padding: const EdgeInsets.all(8.0),
                        margin: const EdgeInsets.all(10.0),
                        alignment: Alignment.center,
                        decoration:
                            BoxDecoration(border: Border.all(width: 5.0)),
                        child: Image.network(
                            'https://tzsjdxwi.cdn.imgeng.in/2021/09/Gf-buttons@2x--2-.png'),
                        // Container has *lots* of other properties, many of which
                        // we'll cover in the Styles chapter.
                      ),
                      Container(
                        padding: EdgeInsets.all(8.0),
                        margin: EdgeInsets.all(10.0),
                        decoration:
                            BoxDecoration(border: Border.all(width: 5.0)),
                        child: Image.network(
                            'https://tzsjdxwi.cdn.imgeng.in/2021/09/Gf-buttons@2x--2-.png'),
                        // Container has *lots* of other properties, many of which
                        // we'll cover in the Styles chapter.
                      ),
                      Container(
                        padding: EdgeInsets.all(8.0),
                        margin: EdgeInsets.all(10.0),
                        decoration:
                            BoxDecoration(border: Border.all(width: 5.0)),
                        child: Image.network(
                            'https://tzsjdxwi.cdn.imgeng.in/2021/09/Gf-buttons@2x--2-.png'),
                        // Container has *lots* of other properties, many of which
                        // we'll cover in the Styles chapter.
                      ),
                      Container(
                        padding: EdgeInsets.all(8.0),
                        margin: EdgeInsets.all(10.0),
                        decoration:
                            BoxDecoration(border: Border.all(width: 5.0)),
                        child: Image.network(
                            'https://tzsjdxwi.cdn.imgeng.in/2021/09/Gf-buttons@2x--2-.png'),
                        // Container has *lots* of other properties, many of which
                        // we'll cover in the Styles chapter.
                      ),
                    ],
                  ),
                )
                ]
                )));
  }
}
