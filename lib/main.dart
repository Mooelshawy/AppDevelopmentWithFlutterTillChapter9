import 'package:flutter/material.dart';
import 'package:flutter_gestures_app/menu/menu.dart';
import 'package:flutter_gestures_app/menu_page/buttons.dart';
import 'package:flutter_gestures_app/menu_page/page2.dart';
import 'package:flutter_gestures_app/menu_page/page3.dart';
import 'package:flutter_gestures_app/menu_page/page5.dart';
import 'package:flutter_gestures_app/screen/home_screen_body.dart';

import 'menu_page/page1.dart';
import 'menu_page/tab_navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Page1 firstPage = Page1();
    var second_theme = ThemeData(
      // This is the theme of your application.
      //
      // Try running your application with "flutter run". You'll see the
      // application has a blue toolbar. Then, without quitting the app, try
      // changing the primarySwatch below to Colors.green and then invoke
      // "hot reload" (press "r" in the console where you ran "flutter run",
      // or simply save your changes to "hot reload" in a Flutter IDE).
      // Notice that the counter didn't reset back to zero; the application
      // is not restarted.
      primarySwatch: Colors.deepPurple,
    );
    return MaterialApp(
      title: 'Flutter Demo',
      theme: second_theme,

      //this slash refer to home screen
      initialRoute: '/',

      // this tag refer to route in flutter
      routes: {
        //tell application when load root page load home page
        '/': (context) => const MyHomePage(title: 'Home Page '),
        //create navigation from first page to page you want move to it
        //cteate any name to route rules and using context for navigation
        '/first': (context) => Page1(),
        '/second': (context) => Page2(),
        '/third': (context) => Page3(),
        '/fourth': (context) => Buttons(),
        '/fivth': (context) => Page5(), 
        '/sixPage':(context) => TabNavigation()
      },
      /**
       * SafeArea widget which in essence does that for you.
Simply wrap the SafeArea widget around all of your body content and
let it do the heavy lifting for you. Putting it inside the Scaffold but around
the body is a terrific place:
       */
      // home: SafeArea(
      //   child: const MyHomePage(title: ' Home Page'),
      // ),

      // routes: <String, WidgetBuilder>{
      //   "/page1" : (BuildContext ctx) => Page1(),
      // },
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var icon_changer = Icon(Icons.add);
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      drawer: ListDrawer(),
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: HomeScreenBody(),

      floatingActionButton: FloatingActionButton(
        child: icon_changer,
        onPressed: () {
          icon_changer = const Icon(Icons.next_plan);
        },
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
