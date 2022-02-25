import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:zema/Components/dropdown/about_drop_down.dart';
import 'package:zema/Components/dropdown/contact_us_page.dart';
import 'package:zema/Components/home_page.dart';
import 'package:zema/Components/search_page.dart';
import 'package:zema/main.dart';

class FeedBack extends StatefulWidget {
  @override
  _FeedBackState createState() => _FeedBackState();
}

class _FeedBackState extends State<FeedBack> {
  launchUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURLMail() async {
    const url =
        'mailto:kalget12@gmail.com?subject=LifePlusApp&body=Your sugestions%20or Feedback..';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();
  String name = '';
  String message = '';
  String _title = 'Feedback';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(70),
          child: SafeArea(
            child: Card(
              child: AppBar(
                title: Text(_title),
                backgroundColor: MyApp.themeNotifier.value == ThemeMode.light
                    ? Colors.green
                    : Color.fromARGB(255, 102, 97, 97),
                leading: IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                    icon: Icon(Icons.arrow_back)),
                actions: [
                  IconButton(
                    onPressed: () => Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => SearchPage())),
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
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 14.0, horizontal: 13),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.green),
                      borderRadius: BorderRadius.circular(5)),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "Leave us a message, and we'll get in contact with you as soon as possible. ",
                      style: TextStyle(
                        fontSize: 15.5,
                        height: 1.3,
                        fontFamily: 'RobotoSlab',
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  onChanged: (val) {
                    if (val != null || val.length > 0) name = val;
                  },
                  controller: t1,
                  decoration: InputDecoration(
                    fillColor: Color(0xffe6e6e6),
                    filled: true,
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                    hintText: 'Your name',
                    hintStyle: TextStyle(
                        color: Colors.blueGrey, fontFamily: 'RobotoSlab'),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(7),
                      ),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(7),
                      ),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(7),
                      ),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.0001,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  onChanged: (val) {
                    if (val != null || val.length > 0) message = val;
                  },
                  textAlign: TextAlign.start,
                  controller: t2,
                  decoration: InputDecoration(
                    fillColor: Color(0xffe6e6e6),
                    filled: true,
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 35, horizontal: 20),
                    hintText: 'Your message',
                    hintStyle: TextStyle(
                      color: Colors.blueGrey,
                      fontFamily: 'RobotoSlab',
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Card(
                color: Colors.green[300],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                margin: EdgeInsets.symmetric(horizontal: 10.0),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      t1.clear();
                      t2.clear();
                      launchUrl(
                          "mailto:kalget12@gmail.com?subject=From $name&body=$message");
                    });
                  },
                  child: ListTile(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Center(
                            child: Icon(
                          Icons.send,
                          color: Colors.white,
                        )),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.03,
                        ),
                        Center(
                            child: Text(
                          "Send",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white, fontFamily: 'RobotoSlab'),
                        )),
                      ],
                    ),
                  ),
                ),
              ),



            ],
          ),
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
