import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

import '../main.dart';
import 'drawer.dart';
import 'mezmur_page.dart';
import 'setting_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  String _title = 'መዝሙሮች';
  static const List<Widget> _pages = <Widget>[
    MezmurPage(),
    SettingPage(),
    MezmurPage(),
    SettingPage(),
  ];

  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();
    Future<dynamic>? exitDialog() {
    return showDialog(
      context: context,
      builder: (context) => Container(
        child: AlertDialog(
          title: Text("Are You Sure?", style: TextStyle(fontSize: 18),),
          content: Text("Do you want to exit from the app?"),
          actions: [
            FlatButton(
              onPressed: () {
                SystemNavigator.pop();
              },
              child: Text("Yes"),
            ),
            FlatButton(
              onPressed: () {
                Navigator.of(context).pop(false);
              },
              child: Text("No"),
            ),
          ],
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        exitDialog();
        return Future.value(false);
      },
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(70),
            child: SafeArea(
              child: Card(
                child: AppBar(
                  title: Text(_title),
                  backgroundColor:  MyApp.themeNotifier.value == ThemeMode.light
                    ?Colors.green
                    :  Color.fromARGB(255, 102, 97, 97),
    
                  actions: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.search),
                    ),
                    
                    PopupMenuButton<int>(
                      icon: Icon(Icons.arrow_drop_down_circle_outlined),
                      color: MyApp.themeNotifier.value == ThemeMode.light
                    ?Color.fromARGB(255, 244, 247, 244)
                    :  Color.fromARGB(255, 70, 68, 68),
                      onSelected: (item) => onSelected(context, item),
                      itemBuilder: (context) => [
                    PopupMenuItem<int>(
                      value: 0,
                      child: Text('Settings'),
                    ),
                    PopupMenuItem<int>(
                      value: 1,
                      child: Text('Share'),
                    ),
                    PopupMenuDivider(),
                    PopupMenuItem<int>(
                      value: 2,
                      child: Row(
                        children: [
                          Icon(Icons.logout),
                          const SizedBox(width: 8),
                          Text('Sign Out'),
                        ],
                      ),
                    ),
                  ],
                    )
    
    
    
                    
                  ],
                ),
              ),
            )),
        extendBodyBehindAppBar: false,
        body: Center(
          child: _pages.elementAt(_selectedIndex),
        ),
        drawer: Drawer(
      child: ListView(
        // Remove padding
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(''),
            accountEmail: Text(''),
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/images/logo.jpg')),
            ),
          ),
          ListTile(
            leading: Icon(Icons.music_video_outlined, color: Colors.green[500]),
            title: Text(
              'መዝሙሮች',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.menu_book, color: Colors.green[500]),
            title:
                Text('ትምህርቶች', style: TextStyle(fontWeight: FontWeight.w500)),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.rule_sharp, color: Colors.green[500]),
            title:
                Text('ህግና ደንብ', style: TextStyle(fontWeight: FontWeight.w500)),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.help, color: Colors.green[500]),
            title: Text('ስለ እኛ', style: TextStyle(fontWeight: FontWeight.w500)),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(
              Icons.telegram,
              color: Colors.green[500],
            ),
            title:
                Text('ቴሌግራም ገጽ', style: TextStyle(fontWeight: FontWeight.w500)),
            onTap: () async {
                          launch('https://t.me/SM_tes');
                        },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.dark_mode, color: Colors.green[500]),
            title: Text('Dark Mode',
                style: TextStyle(fontWeight: FontWeight.w400)),
            trailing: IconButton(
              icon: Icon(MyApp.themeNotifier.value == ThemeMode.light
                  ? Icons.dark_mode
                  : Icons.light_mode),
              onPressed: () {
                MyApp.themeNotifier.value =
                    MyApp.themeNotifier.value == ThemeMode.light
                        ? ThemeMode.dark
                        : ThemeMode.light;
              }),
            onTap: (){},
          ),
          ListTile(
            title: Text('Exit', style: TextStyle(fontWeight: FontWeight.w400)),
            leading: Icon(Icons.exit_to_app, color: Colors.green[500]),
            onTap: exitDialog,
          ),
        ],
      ),
    ),
        bottomNavigationBar: BottomNavyBar(
        backgroundColor:  MyApp.themeNotifier.value == ThemeMode.light
                    ?Color.fromARGB(255, 244, 247, 244)
                    :  Color.fromARGB(255, 70, 68, 68),
          itemCornerRadius: 30,
          containerHeight: 60,
          showElevation: false,
          selectedIndex: _selectedIndex,
          onItemSelected: onTabTapped,
          items: <BottomNavyBarItem>[
            BottomNavyBarItem(
                icon: Icon(Icons.home_outlined),
                title: Text('Home'),
                textAlign: TextAlign.center,
                activeColor: Colors.green,
                inactiveColor: Colors.grey),
            BottomNavyBarItem(
                icon: Icon(Icons.favorite),
                title: Text('Favorites'),
                textAlign: TextAlign.center,
                activeColor: Colors.green,
                inactiveColor: Colors.grey),
            BottomNavyBarItem(
                icon: Icon(Icons.menu_book),
                title: Text('Teachings'),
                textAlign: TextAlign.center,
                activeColor: Colors.green,
                inactiveColor: Colors.grey),
            BottomNavyBarItem(
                icon: Icon(Icons.menu),
                title: Text('Menu'),
                textAlign: TextAlign.center,
                activeColor: Colors.green,
                inactiveColor: Colors.grey)
          ],
        ),
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _selectedIndex = index;
      switch (index) {
        case 0:
          {
            _title = 'መዝሙሮች';
          }
          break;
        case 1:
          {
            _title = 'Favorites';
          }
          break;
        case 2:
          {
            _title = 'ትምህርቶች';
          }
          break;
        case 3:
          {
            _title = 'Menu';
          }
          break;
      }
    });
  }
}


 void onSelected(BuildContext context, int item) {
    switch (item) {
      case 0:
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => MezmurPage()),
        );
        break;
      case 1:
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => MezmurPage()),
        );
        break;
      case 2:
        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => MezmurPage()),
          (route) => false,
        );
    }
  }