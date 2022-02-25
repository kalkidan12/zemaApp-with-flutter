// ignore_for_file: unused_import, avoid_web_libraries_in_flutter

import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:zema/Components/dropdown/contact_us_page.dart';
import 'package:zema/Components/dropdown/feedback_page.dart';
import 'package:zema/Components/home_page.dart';
import 'package:zema/Components/menu_page.dart';
import 'package:zema/main.dart';
import 'mezmur_page.dart';

class MezmurDataModel {
  String title;
  String content;
  MezmurDataModel(this.title, this.content);
}

class MezmurDetail extends StatelessWidget {
  final MezmurDataModel mezmurDataModel;
  const MezmurDetail({Key? key, required this.mezmurDataModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyApp.themeNotifier.value == ThemeMode.light
            ? Colors.green
            : Color.fromARGB(255, 102, 97, 97),
        title: Text(
          mezmurDataModel.title,
          style: const TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              icon: const Icon(Icons.share_outlined),
              onPressed: () {
                Share.share(mezmurDataModel.content);
              },
            ),
          )
        ],
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            margin: const EdgeInsets.all(15),
            alignment: Alignment.center,
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 20,
                ),
                Text(
                  mezmurDataModel.content,
                  style: const TextStyle(
                    fontSize: 15,
                    letterSpacing: 0.6,
                  ),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
