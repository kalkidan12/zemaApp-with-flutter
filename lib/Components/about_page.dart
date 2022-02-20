// ignore_for_file: unused_import, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(200),
        child: Container(
          color: Colors.blueGrey,
          child: Column(
            children: <Widget>[
              AppBar(
                title: const Text(
                  "About",
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 20,
                  ),
                ),
                centerTitle: false,
                backgroundColor: Colors.blueGrey,
                elevation: 0,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                width: 300,
                child: const Text(
                    "Thank you for using this app please support us by sharing and rating this app on playstore",
                    style: TextStyle(
                      color: Colors.amber,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.left),
              ),
            ],
          ),
        ),
      ),
      extendBodyBehindAppBar: false,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 15,
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(left: 15.0),
              child: const Text(
                "Contact Us",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Card(
                    child: ListTile(
                        leading: const Icon(Icons.mail, color: Colors.amber),
                        title: const Text("Gmail contact"),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: const Text("kalget12@gmail.com",
                              style: TextStyle(color: Colors.amber)),
                        ),
                        onTap: () async {
                          launch('mailto: kalget12@gmail.com?subject');
                        }),
                  ),
                  Card(
                    child: ListTile(
                      leading: const Icon(Icons.call, color: Colors.amber),
                      title: const Text("Phone contact"),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 5.0),
                        child: const Text("0961524406",
                            style: TextStyle(color: Colors.amber)),
                      ),
                      onTap: () {
                        launch('tel: +251961524406');
                      },
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: const Icon(Icons.message, color: Colors.amber),
                      title: const Text("Message"),
                      onTap: () {
                        launch('sms: +251961524406');
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(left: 15.0),
              child: const Text(
                "Services",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20.0),
              child: Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Card(
                    child: ListTile(
                      leading: const Icon(Icons.web, color: Colors.amber),
                      title: const Text("Web App Development"),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: const Icon(Icons.mobile_friendly,
                          color: Colors.amber),
                      title: const Text("Mobile App Development"),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: const Icon(Icons.desktop_mac_outlined,
                          color: Colors.amber),
                      title: const Text("Desktop App Development"),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: const Icon(Icons.graphic_eq_outlined,
                          color: Colors.amber),
                      title: const Text("Graphics Design"),
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.all(
                  20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Icon(
                      Icons.copyright,
                      size: 15,
                      color: Colors.amber,
                    ),
                    Text("zema choir, all rights reserved 2021."),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
