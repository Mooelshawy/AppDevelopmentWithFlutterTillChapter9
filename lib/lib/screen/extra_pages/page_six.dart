import 'package:flutter/material.dart';
import 'package:state_mangment_chapter_nine/inner_page_extra/page_view_one.dart';
import 'package:state_mangment_chapter_nine/inner_page_extra/page_view_three.dart';
import 'package:state_mangment_chapter_nine/inner_page_extra/page_view_two.dart';
import 'package:state_mangment_chapter_nine/screen/extra_pages/page_seven.dart';


class PageSix extends StatefulWidget {
  @override
  _PageSixState createState() => _PageSixState();
}

class _PageSixState extends State<PageSix> {
   PageController  _controller = PageController(
    initialPage: 0
  );

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        centerTitle: true,
        elevation: 10,
        backgroundColor: Colors.blueGrey[900],
        title: Text(
          'Extra Page Six '
        ),
      ),

      body:
          PageView(
            controller: _controller ,
            scrollDirection: Axis.horizontal,
            children: [
              PageViewOne(),
              PageViewTwo(),
              PageViewThree()
            ],
          )
        
        
      
    );
  }
}
