import 'package:flutter/material.dart';

class PageOne extends StatefulWidget {
  @override
  _PageOneState createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  int conuter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyanAccent,
      appBar: AppBar(
        centerTitle: true,
        title: Text('PageOne for StatefulWidget'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height:50,
            child: Row(
              
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                
                Image.asset('assets/images/more.png'),
                Image.asset('assets/images/more.png'),
                Image.asset('assets/images/more.png'),
                Image.asset('assets/images/more.png'),
                Image.asset('assets/images/more.png'),
                Image.asset('assets/images/more.png'),
                Image.asset('assets/images/more.png'),
                
              ],
            ),
          ),
          Text(
            'Number Of Click On Button ',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.black,
                fontSize: 25.0,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold),
          ),
          Padding(padding: EdgeInsets.all(15.0)),
          Text(
            '$conuter ',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.black,
                fontSize: 25.0,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold),
          ),
          IntrinsicWidth(
            child: Column(
             crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                OutlinedButton(
                    child: Text('Reset ME ***hhhhhh'),
                    onPressed: () {
                      setState(() {
                        conuter = 0;
                      });
                    }),
                OutlinedButton(
                    child: Text('Reset ME  /////hhhhhhhhhhhhhh'),
                    onPressed: () {
                      setState(() {
                        conuter = 0;
                      });
                    }),
                OutlinedButton(
                    child: Text('Reset ME +++++++++++++++hhhhhhhhhhhhhhhh'),
                    onPressed: () {
                      setState(() {
                        conuter = 0;
                      });
                    }),
                OutlinedButton(
                    child: Builder(
                      builder: (BuildContext context) {
                        return TextButton(
                          child: const Text('BUTTON'),
                          onPressed: () {
                            Scaffold.of(context).showBottomSheet<void>(
                              (BuildContext context) {
                                return Container(
                                  alignment: Alignment.center,
                                  height: 200,
                                  color: Colors.amber,
                                  child: Center(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        const Text('BottomSheet'),
                                        ElevatedButton(
                                          child:
                                              const Text('Close BottomSheet'),
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                        );
                      },
                    ),
                    onPressed: () {})
              ],
            ),
          ),
        ],
      )),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          backgroundColor: Colors.blueGrey,
          onPressed: () {
            setState(() {
              conuter++;
            });
          }),
    );
  }
}
