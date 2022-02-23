import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:zema/Components/dropdown/about_drop_down.dart';
import 'package:zema/Components/dropdown/contact_us_page.dart';
import 'package:zema/Components/dropdown/feedback_page.dart';
import 'package:zema/Components/home_page.dart';
import 'package:zema/Components/menu_page.dart';
import 'package:zema/main.dart';

class TeachingDrawerPage extends StatefulWidget {
  const TeachingDrawerPage({Key? key}) : super(key: key);

  @override
  _TeachingPageState createState() => _TeachingPageState();
}

class _TeachingPageState extends State<TeachingDrawerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoadingListPage(),
    );
  }
}

class LoadingListPage extends StatefulWidget {
  @override
  _LoadingListPageState createState() => _LoadingListPageState();
}

class _LoadingListPageState extends State<LoadingListPage> {
  bool _enabled = true;
  var _title = "ትምህርቶች";
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
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Expanded(
              child: Shimmer.fromColors(
                baseColor: Colors.grey,
                highlightColor: Colors.grey,
                enabled: _enabled,
                child: ListView.builder(
                  itemBuilder: (_, __) => Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 48.0,
                          height: 48.0,
                          color: Colors.white,
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                width: double.infinity,
                                height: 8.0,
                                color: Colors.white,
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(vertical: 2.0),
                              ),
                              Container(
                                width: double.infinity,
                                height: 8.0,
                                color: Colors.white,
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(vertical: 2.0),
                              ),
                              Container(
                                width: 40.0,
                                height: 8.0,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  itemCount: 8,
                ),
              ),
            ),
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
