import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rating_dialog/rating_dialog.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:zema/Components/dropdown/about_drop_down.dart';
import 'package:zema/Components/dropdown/contact_us_page.dart';
import 'package:zema/Components/dropdown/feedback_page.dart';
import 'package:zema/Components/dropdown/gallery_page.dart';
import 'package:zema/Components/dropdown/menu_drawer.dart';
import 'package:zema/Components/dropdown/rule_drop_page.dart';
import 'package:zema/Components/rule_page.dart';
import 'package:zema/Components/dropdown/teaching_drawer.dart';
import 'package:zema/Components/search_page.dart';

import '../main.dart';
import 'mezmur_page.dart';
import 'menu_page.dart';
import 'teaching_page.dart';

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
    RulePage(),
    TeachingPage(),
    MenuPage(),
  ];

  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();
  Future<dynamic>? exitDialog() {
    return showDialog(
      context: context,
      builder: (context) => Container(
        child: AlertDialog(
          title: Text(
            "Are You Sure?",
            style: TextStyle(fontSize: 18),
          ),
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

  void show() {
    showDialog(
        context: context,
        builder: (context) {
          return RatingDialog(
            title: Text("Rate And Review Elet Injera"),
            submitButtonText: "Submit",
            onSubmitted: (rating) {
              // ignore: avoid_print
              print("rating");
            },
          );
        });
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
                  backgroundColor: MyApp.themeNotifier.value == ThemeMode.light
                      ? Colors.green
                      : Color.fromARGB(255, 102, 97, 97),
                  actions: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButton(
                        onPressed: () => Navigator.of(context).push(
                            MaterialPageRoute(builder: (_) => SearchPage())),
                        icon: Icon(Icons.search),
                      ),
                    ),
                    PopupMenuButton<int>(
                      icon: Icon(Icons.arrow_drop_down_circle_outlined),
                      color: MyApp.themeNotifier.value == ThemeMode.light
                          ? Color.fromARGB(255, 244, 247, 244)
                          : Color.fromARGB(255, 70, 68, 68),
                      onSelected: (item) => onSelected(context, item),
                      itemBuilder: (context) => [
                        PopupMenuItem<int>(
                          value: 0,
                          child: Text('መዝሙሮች'),
                        ),
                        PopupMenuItem<int>(
                          value: 1,
                          child: Text('gallery'),
                          // onTap: show,
                        ),
                        PopupMenuItem<int>(
                          value: 2,
                          child: Text('Contact Us'),
                        ),
                        PopupMenuItem<int>(
                          value: 3,
                          child: Text('Feedback'),
                          // onTap: show,
                        ),
                        PopupMenuItem<int>(
                          value: 4,
                          child: Text('About'),
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
                leading:
                    Icon(Icons.music_video_outlined, color: Colors.green[500]),
                title: Text(
                  'መዝሙሮች',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
              ),
              ListTile(
                leading: Icon(Icons.menu_book, color: Colors.green[500]),
                title: Text('ትምህርቶች',
                    style: TextStyle(fontWeight: FontWeight.w500)),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TeachingDrawerPage()));
                },
              ),
              ListTile(
                leading: Icon(Icons.rule_sharp, color: Colors.green[500]),
                title: Text('ህግና ደንብ',
                    style: TextStyle(fontWeight: FontWeight.w500)),
                onTap: () => {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => RuleDrawer()))
                },
              ),
              ListTile(
                leading:
                    FaIcon(FontAwesomeIcons.weebly, color: Colors.green[500]),
                title: Text('ስለ እኛ',
                    style: TextStyle(fontWeight: FontWeight.w500)),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MenuDrawerPage()));
                },
              ),
              ListTile(
                leading: FaIcon(
                  FontAwesomeIcons.telegram,
                  color: Colors.green[500],
                ),
                title: Text('ቴሌግራም ገጽ',
                    style: TextStyle(fontWeight: FontWeight.w500)),
                onTap: () async {
                  launch('https://t.me/zemachoir1234videochat');
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
                onTap: () {},
              ),
              ListTile(
                title:
                    Text('Exit', style: TextStyle(fontWeight: FontWeight.w400)),
                leading: Icon(Icons.exit_to_app, color: Colors.green[500]),
                onTap: exitDialog,
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavyBar(
          backgroundColor: MyApp.themeNotifier.value == ThemeMode.light
              ? Color.fromARGB(255, 244, 247, 244)
              : Color.fromARGB(255, 70, 68, 68),
          itemCornerRadius: 30,
          containerHeight: 60,
          showElevation: false,
          selectedIndex: _selectedIndex,
          onItemSelected: onTabTapped,
          items: <BottomNavyBarItem>[
            BottomNavyBarItem(
                icon: Icon(Icons.home_outlined),
                title: Text('መዝሙሮች'),
                textAlign: TextAlign.center,
                activeColor: Colors.green,
                inactiveColor: Colors.grey),
            BottomNavyBarItem(
                icon: Icon(Icons.rule),
                title: Text('ህግና ደንብ'),
                textAlign: TextAlign.center,
                activeColor: Colors.green,
                inactiveColor: Colors.grey),
            BottomNavyBarItem(
                icon: Icon(Icons.menu_book),
                title: Text('ትምህርቶች'),
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
            _title = 'ህግና ደንብ';
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
        MaterialPageRoute(builder: (context) => HomePage()),
      );
      break;
    case 1:
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => GalleryPage()),
      );
      break;
    case 2:
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => ContactPage()),
      );
      break;
    case 3:
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => FeedBack()),
      );
      break;
    case 4:
      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => AboutDropPage()),
        (route) => false,
      );
  }
}
