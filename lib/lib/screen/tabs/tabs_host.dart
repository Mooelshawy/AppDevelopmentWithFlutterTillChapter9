import 'package:flutter/material.dart';
import 'package:state_mangment_chapter_nine/screen/page_four.dart';
import 'package:state_mangment_chapter_nine/screen/tabs/tabs_four.dart';
import 'package:state_mangment_chapter_nine/screen/tabs/tabs_one.dart';
import 'package:state_mangment_chapter_nine/screen/tabs/tabs_three.dart';
import 'package:state_mangment_chapter_nine/screen/tabs/tabs_two.dart';

class TabsHost extends StatefulWidget {
  @override
  _TabsHostState createState() => _TabsHostState();
}

class _TabsHostState extends State<TabsHost> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _tabController = TabController(length: 4, vsync: this);
    _tabController.animateTo(2);
  }

  @override
  Widget build(BuildContext context) {
    return Material(

      color: Colors.indigo,
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          
          appBar: AppBar(
            centerTitle: true,
            title: Text('Tabs Section '),
            elevation: 2,
            bottomOpacity: 1,
            primary: true,
            scrolledUnderElevation: 5.0,
            shadowColor: Colors.red,
            bottom: TabBar(
              // isScrollable: true,
              labelColor: Colors.black,
              indicatorWeight: 10,
              indicatorSize: TabBarIndicatorSize.tab,
              unselectedLabelColor: Colors.white70,

              indicator: BoxDecoration(
                  color: Colors.greenAccent,
                  borderRadius: BorderRadius.all(Radius.circular(50))),
              tabs: [
                Tab(icon: Icon(Icons.directions_car)),
                Tab(icon: Icon(Icons.directions_transit)),
                Tab(icon: Icon(Icons.directions_bike)),
                Tab(icon: Icon(Icons.next_week_sharp)),
              ],
              onTap: (int index) {
                switch (index) {
                  case 0:
                    {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TabOne()),
                      );
                    }
                    break;
                  case 1:
                    {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TabTwo()),
                      );
                    }
                    break;
                  case 2:
                    {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TabThree()),
                      );
                    }
                    break;
                  case 3:
                    {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TabFour()),
                      );
                    }
                    break;
                }
              },
            ),
          ),
          body: TabBarView(
            controller: _tabController,

            children: [
              TabOne(),
              TabTwo(),
              TabThree(),
              TabFour()
            ],
          ),
        ),
      ),
    );
  }
}
