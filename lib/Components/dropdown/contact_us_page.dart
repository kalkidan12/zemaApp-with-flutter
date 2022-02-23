import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:zema/Components/dropdown/about_drop_down.dart';
import 'package:zema/Components/dropdown/feedback_page.dart';
import 'package:zema/Components/home_page.dart';
import 'package:zema/main.dart';


class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  var _title = 'Contact Us';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(70),
          child: SafeArea(
            child: Card(
              child: AppBar(
                title: Text(_title),
                backgroundColor: MyApp.themeNotifier.value == ThemeMode.light
                    ? Colors.green
                    : Color.fromARGB(255, 102, 97, 97),
                leading: IconButton(onPressed: () {
                               Navigator.push(
                               context, MaterialPageRoute(builder: (context) => HomePage()));
                             },icon: Icon(Icons.arrow_back)),
                actions: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.search),
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
                        // onTap: () {
                        //       Navigator.push(
                        //       context, MaterialPageRoute(builder: (context) => HomePage()));
                        //       },
                      ),
                      PopupMenuItem<int>(
                        value: 1,
                        child: Text('Contact Us'),
                      ),
                      PopupMenuItem<int>(
                        value: 2,
                        child: Text('Feedback'),
                        // onTap: show,
                      ),
                      PopupMenuItem<int>(
                        value: 3,
                        child: Text('About'),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )),
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
                        leading: const Icon(Icons.mail, color: Colors.green),
                        title: const Text("Gmail contact"),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: const Text("kalget12@gmail.com",
                              style: TextStyle(color: Colors.green)),
                        ),
                        onTap: () async {
                          launch('mailto: kalget12@gmail.com?subject');
                        }),
                  ),
                  Card(
                    child: ListTile(
                      leading: const Icon(Icons.call, color: Colors.green),
                      title: const Text("Phone contact"),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 5.0),
                        child: const Text("0961524406",
                            style: TextStyle(color: Colors.green)),
                      ),
                      onTap: () {
                        launch('tel: +251961524406');
                      },
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: const Icon(Icons.message, color: Colors.green),
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
                      leading: const Icon(Icons.web, color: Colors.green),
                      title: const Text("Web App Development"),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: const Icon(Icons.mobile_friendly,
                          color: Colors.green),
                      title: const Text("Mobile App Development"),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: const Icon(Icons.desktop_mac_outlined,
                          color: Colors.green),
                      title: const Text("Desktop App Development"),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: const Icon(Icons.graphic_eq_outlined,
                          color: Colors.green),
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
                      color: Colors.green,
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

void onSelected(BuildContext context, int item) {
  switch (item) {
    case 0:
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => HomePage()),
      );
      break;
    case 1:
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => ContactPage()),
      );
      break;
    case 2:
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => FeedBack()),
      );
      break;
    case 3:
      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => AboutDropPage()),
        (route) => false,
      );
  }
}
