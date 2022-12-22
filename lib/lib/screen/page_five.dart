import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import '../menu/count_state.dart';

class PageFive extends StatelessWidget {
  //this is global variable 
  final String title;


  PageFive(this.title); 

 
  @override
  Widget build(BuildContext context) {
    //this is local variable 
     Color _color = Colors.green ;
    return Scaffold(
      
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: <Widget>[
            Text('You have pushed the button this many times:'),
            // Create a ScopedModelDescendant. This widget will get the
            // CounterModel from the nearest parent ScopedModel<CounterModel>.
            // It will hand that CounterModel to our builder method, and
            // rebuild any time the CounterModel changes (i.e. after we
            // `notifyListeners` in the Model).
            ScopedModelDescendant<CounterModel>(
              builder: (context, child, model) {
                return Text(
                 
                  model.counter.toString(),
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold ,
                    color : _color , 
                  ),
                  
                );
              },
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: ScopedModelDescendant<CounterModel>(
                    builder: (context, child, model) {
                      return FloatingActionButton(
                        onPressed: () {
                          model.decreament();
                        },
                        tooltip: 'Decreament',
                        child: Icon(Icons.minimize),
                      );
                    },
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: ScopedModelDescendant<CounterModel>(
                    builder: (context, child, model) {
                      return FloatingActionButton(
                        onPressed: () {
                          model.increament();
                        },
                        tooltip: 'Decreament',
                        child: Icon(Icons.add),
                      );
                    },
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: ScopedModelDescendant<CounterModel>(
                    builder: (context, child, model) {
                      return FloatingActionButton(
                        onPressed: () {
                          _color = Colors.amber ;
                          model.decreament();
                        },
                        tooltip: 'Decreament',
                        child: Icon(Icons.minimize),
                      );
                    },
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: ScopedModelDescendant<CounterModel>(
                    builder: (context, child, model) {
                      return FloatingActionButton(
                        onPressed: () {
                           _color = Colors.blue ;
                           model.increament();
                        },
                        tooltip: 'Decreament',
                        child: Icon(Icons.add),
                      );
                    },
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: ScopedModelDescendant<CounterModel>(
                    builder: (context, child, model) {
                      return FloatingActionButton(
                        onPressed: () {
                          _color = Colors.red;
                          model.decreament();
                        },
                        tooltip: 'Decreament',
                        child: Icon(Icons.minimize),
                      );
                    },
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: ScopedModelDescendant<CounterModel>(
                    builder: (context, child, model) {
                      return FloatingActionButton(
                        onPressed: () {
                           _color = Colors.teal;
                           model.increament();
                        },
                        tooltip: 'Decreament',
                        child: Icon(Icons.add),
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      // Use the ScopedModelDescendant again in order to use the increment
      // method from the CounterModel
    );
  }
}
