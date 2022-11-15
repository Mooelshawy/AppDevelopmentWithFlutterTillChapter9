import 'package:flutter/material.dart';

class Page5 extends StatefulWidget {
  @override
  _Page5State createState() => _Page5State();
}

class _Page5State extends State<Page5> {
  int pageIndex = 0;
  Widget contact = MyContacts();
  Widget email = MyEmails();
  Widget profile = MyProfile();
  Widget newPageloaded = NewPageLoaded();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Page 5',
            style: const TextStyle(
              color: Colors.amberAccent,
              fontSize: 25.0,
            ),
          ),
        ),
        body: getBody(),
        //navigation for bottom of application like AppBar
        /**
       * BottomAppBar(
        shape: CircularNotchedRectangle(),
        color: Colors.amberAccent,
        child: Container(height: 50.0),
      ),
      //button apear in Right side in screen body button have icon in center 
      //locatin control by using FloatActionLocation attriute 

      //CenterDocked : center of bottom navigator 
      //StartDocked : start of botton navigator and so on 
      floatingActionButton: FloatingActionButton(
    onPressed: () {},
    //text apear when long press on button 
    tooltip: 'Increment Counter',
    child: Icon(Icons.add),
  ),
  floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
  floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
       */
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: this.pageIndex,
          selectedItemColor: Colors.deepPurple,
          unselectedItemColor: Colors.amberAccent,
          items: [
            const BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
                activeIcon: Icon(Icons.menu_open)),
            const BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Search',
                activeIcon: Icon(Icons.menu_open)),
            const BottomNavigationBarItem(
                icon: Icon(Icons.account_box),
                label: 'User',
                activeIcon: Icon(Icons.menu_open)),
            const BottomNavigationBarItem(
                icon: Icon(Icons.merge),
                label: 'New',
                activeIcon: Icon(Icons.menu_open))
          ],
          onTap: (int indexPage) {
            setState(() {
              pageIndex = indexPage;
            });
          },
        ));
  }

  Widget getBody() {
    if (pageIndex == 0) {
      return contact;
    } else if (pageIndex == 1) {
      return email;
    } else if (pageIndex == 2) {
      return profile;
    } else {
      return newPageloaded;
    }
  }
}

class MyContacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.purple,
        child: Center(
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                    border: Border(
                      top: BorderSide(
                        width: 10,
                        color: Colors.red,
                      ),
                      right: BorderSide(
                        width: 20,
                        color: Colors.red,
                      ),
                      bottom: BorderSide(
                        width: 30,
                        color: Colors.red,
                      ),
                    ),
                    color: Colors.green,
                    boxShadow: [
                      BoxShadow(
                        offset: Offset.fromDirection(0.25 * 3.14, 10.0),
                        blurRadius: 10.0,
                      )
                    ]),
                child: Text(
                  'It is a great honor for me try learing Flutter is it a magical tool for '
                  'developing Android and IOS application and very easy to learn using Dart '
                  'thanks google for this is idea to helping development process ',
                ))));
  }
}

class MyEmails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.amberAccent,
        child: Center(
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      const Radius.circular(20.0),
                    ),
                    color: Colors.indigo),
                child: ListView(
                  children: [
                    Text(
                      'It is a great honor for me try learing Flutter is it a magical tool for '
                      'developing Android and IOS application and very easy to learn using Dart '
                      'thanks google for this is idea to helping development process ',
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                    Divider(
                      color: Colors.red,
                      thickness: 5.0,
                    ),
                    Text(
                      'It is a great honor for me try learing Flutter is it a magical tool for '
                      'developing Android and IOS application and very easy to learn using Dart '
                      'thanks google for this is idea to helping development process ',
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                    Divider(
                      color: Colors.red,
                      thickness: 5.0,
                    ),
                    Text(
                      'It is a great honor for me try learing Flutter is it a magical tool for '
                      'developing Android and IOS application and very easy to learn using Dart '
                      'thanks google for this is idea to helping development process ',
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                    Divider(
                      color: Colors.red,
                      thickness: 5.0,
                    ),
                    Text(
                      'It is a great honor for me try learing Flutter is it a magical tool for '
                      'developing Android and IOS application and very easy to learn using Dart '
                      'thanks google for this is idea to helping development process ',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    Divider(
                      color: Colors.red,
                      thickness: 5.0,
                    ),
                    Text(
                      'It is a great honor for me try learing Flutter is it a magical tool for '
                      'developing Android and IOS application and very easy to learn using Dart '
                      'thanks google for this is idea to helping development process ',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    Divider(
                      color: Colors.red,
                      thickness: 5.0,
                    ),
                    Text(
                      'It is a great honor for me try learing Flutter is it a magical tool for '
                      'developing Android and IOS application and very easy to learn using Dart '
                      'thanks google for this is idea to helping development process ',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    Divider(
                      color: Colors.red,
                      thickness: 5.0,
                    ),
                    Text(
                      'It is a great honor for me try learing Flutter is it a magical tool for '
                      'developing Android and IOS application and very easy to learn using Dart '
                      'thanks google for this is idea to helping development process ',
                      style: Theme.of(context).textTheme.displaySmall,
                    ),Divider(
                      color: Colors.red,
                      thickness: 5.0,
                    ),
                    Text(
                      'It is a great honor for me try learing Flutter is it a magical tool for '
                      'developing Android and IOS application and very easy to learn using Dart '
                      'thanks google for this is idea to helping development process ',
                      style: Theme.of(context).textTheme.displayMedium,
                    ),Divider(
                      color: Colors.red,
                      thickness: 5.0,
                    ),
                    Text(
                      'It is a great honor for me try learing Flutter is it a magical tool for '
                      'developing Android and IOS application and very easy to learn using Dart '
                      'thanks google for this is idea to helping development process ',
                      style: Theme.of(context).textTheme.displayLarge,
                    ),Divider(
                      color: Colors.red,
                      thickness: 5.0,
                    ),
                    Text(
                      'It is a great honor for me try learing Flutter is it a magical tool for '
                      'developing Android and IOS application and very easy to learn using Dart '
                      'thanks google for this is idea to helping development process ',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),Divider(
                      color: Colors.red,
                      thickness: 5.0,
                    ),
                    Text(
                      'It is a great honor for me try learing Flutter is it a magical tool for '
                      'developing Android and IOS application and very easy to learn using Dart '
                      'thanks google for this is idea to helping development process ',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),Divider(
                      color: Colors.red,
                      thickness: 5.0,
                    ),
                    Text(
                      'It is a great honor for me try learing Flutter is it a magical tool for '
                      'developing Android and IOS application and very easy to learn using Dart '
                      'thanks google for this is idea to helping development process ',
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),Divider(
                      color: Colors.red,
                      thickness: 5.0,
                    ),
                    Text(
                      'It is a great honor for me try learing Flutter is it a magical tool for '
                      'developing Android and IOS application and very easy to learn using Dart '
                      'thanks google for this is idea to helping development process ',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ],
                ))));
  }
}

class MyProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.red[100],
        child: Center(
            child: Card(
          child: Stack(
            children: [
              Image.asset('assets/image/angry-bull-head.jpg'),
              Column(
                children: <Widget>[
                  Text(
                    "Sandeep Patel",
                    style: Theme.of(context)
                        .textTheme
                        .displaySmall
                        ?.copyWith(color: Colors.white),
                  ),
                  Text("Email: s.patel@us.com",
                      style: Theme.of(context)
                          .textTheme
                          .displaySmall
                          ?.copyWith(color: Colors.white)),
                  Text("Phone: +1 (555) 786-3512",
                      style: Theme.of(context)
                          .textTheme
                          .displaySmall
                          ?.copyWith(color: Colors.white)),
                ],
              ),
            ],
          ),
        )));
  }
}

class NewPageLoaded extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.green,
        child: Center(
          child: Text(
            'It is a great honor for me try learing Flutter is it a magical tool for '
            'developing Android and IOS application and very easy to learn using Dart '
            'thanks google for this is idea to helping development process ',
          ),
        ));
  }
}
