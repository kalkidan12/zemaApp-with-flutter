import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:zema/Components/dropdown/about_drop_down.dart';
import 'package:zema/Components/dropdown/contact_us_page.dart';
import 'package:zema/Components/home_page.dart';
import 'package:zema/Components/menu_page.dart';
import 'package:zema/main.dart';

class FeedBack extends StatefulWidget {
  const FeedBack({Key? key}) : super(key: key);

  @override
  _FeedBackState createState() => _FeedBackState();
}

class _FeedBackState extends State<FeedBack> {
  var _title = 'Feedback';
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
            Text("Feedback Page")
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
