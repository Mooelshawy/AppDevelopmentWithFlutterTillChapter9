import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:state_mangment_chapter_nine/screen/extra_pages/page_eight.dart';
import 'package:state_mangment_chapter_nine/screen/extra_pages/page_nine.dart';
import 'package:state_mangment_chapter_nine/screen/extra_pages/page_seven.dart';
import 'package:state_mangment_chapter_nine/screen/extra_pages/page_ten.dart';
import 'package:state_mangment_chapter_nine/screen/home_body.dart';
import 'package:state_mangment_chapter_nine/screen/page_five.dart';
import 'package:state_mangment_chapter_nine/screen/page_four.dart';
import 'package:state_mangment_chapter_nine/screen/page_one.dart';
import 'package:state_mangment_chapter_nine/screen/page_three.dart';
import 'package:state_mangment_chapter_nine/screen/page_two.dart';
import 'package:state_mangment_chapter_nine/screen/tabs/tabs_host.dart';

import 'menu/count_state.dart';
import 'screen/extra_pages/page_six.dart';

void main() {
  runApp( MyApp(
    model: CounterModel(),
  ));
}

class MyApp extends StatelessWidget {
  final CounterModel model;

  const MyApp({Key? key, required this.model}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return 
       
        MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData.dark().copyWith(
            primaryColor: Colors.purple[800],
            accentColor: Colors.amber,
          ),
          initialRoute: '/home',
          routes: {
            '/home': (context) => HomeBody(),
            '/pageone': (context) => PageOne(),
            '/pagetwo': (context) => PageTwo(),
            '/pagethree': (context) => PageThree(),
            '/pagefour': (context) => PageFour(),
            //scoped model for state mangment wrap your screen with like this 
            '/pagefive': (context) => ScopedModel<CounterModel>
            (model: model, child: PageFive("Scoped Model Mangment"),),
            '/pagesix': (context) => PageSix(),
            '/pageseven': (context) => PageSeven(),
            '/pageeight': (context) => PageEight(),
            '/pagenine': (context) => PageNine(),
            '/pageten': (context) => PageTen(),
          },
          //home: MyHomePage(),
        );
        
  }
}

