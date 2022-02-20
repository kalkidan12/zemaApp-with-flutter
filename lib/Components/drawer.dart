import 'dart:io';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'home_page.dart';

import '../main.dart';
import 'home_page.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);

  

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
            onTap: (){},
          ),
        ],
      ),
    );
  }
}

Route _createHomeRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const HomePage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
