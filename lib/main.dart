// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import 'Components/home_page.dart';
import 'Components/teaching_page.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  // Using "static" so that we can easily access it later
  static final ValueNotifier<ThemeMode> themeNotifier =
      ValueNotifier(ThemeMode.light);
  @override
  Widget build(BuildContext context) {
  return ValueListenableBuilder<ThemeMode>(
       valueListenable: themeNotifier,
        builder: (_, ThemeMode currentMode, __) {
          return MaterialApp(
            // Remove the debug banner
            routes: {
        'loading': (_) => LoadingListPage(),
      },
              

            debugShowCheckedModeBanner: false,
           
            theme: ThemeData(primarySwatch: Colors.green,primaryColor: Colors.green),
            darkTheme: ThemeData.dark(),
            themeMode: currentMode,
            home: HomePage(),
          );
        });
  }
}