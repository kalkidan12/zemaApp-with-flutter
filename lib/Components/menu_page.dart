// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:flutter/services.dart';
import 'package:rating_dialog/rating_dialog.dart';
import 'package:zema/Components/dropdown/contact_us_page.dart';


class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
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

  _showFormDialog(BuildContext context) {
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (param) {
          return Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15))),
            child: AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              elevation: 10,
              actions: <Widget>[
                FlatButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Cancel"),
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Send"),
                ),
              ],
              title: const Text("Send Us Message"),
              content: SingleChildScrollView(
                child: Column(
                  children: const <Widget>[
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter your Email',
                        labelText: 'Email',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Write your Message',
                        labelText: 'Message',
                        border: OutlineInputBorder(),
                      ),
                      maxLines: 2,
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }

  Future<dynamic>? exitDialog() {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Are You Sure?"),
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
    );
  }

  _showPrivacyDialog(BuildContext context) {
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (param) {
          return Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              elevation: 10,
              actions: <Widget>[
                FlatButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Ok"),
                ),
              ],
              title: const Text("Privacy Policy"),
              content: SingleChildScrollView(
                child: Column(
                  children: const <Widget>[
                    Text(
                      "This policy applies to KALYAPPS Android applications. You agree to this privacy policy by installing and using our Application. Please do not install or use our Application if you do not agree with this privacy policy. This Privacy policy agreement is between you and KALYAPPS only, and not with the Google play or operating system of your mobile device (e.g. Android, Samsung or Microsoft).  This is our privacy policy and content to make you aware of the proper conditions of the use of this Application.  We reserve the right to modify this Privacy Policy from time to time, so please review it frequently. Your continued use of our Application will signify your acceptance of the changes to this Privacy Policy.",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      " What information do we collect?",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        fontStyle: FontStyle.italic,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "We do not collect or use any personal data that may be used to identify or contact you. We do not collect any information from you. The Application will not collect any information from the user. The Application does not send any data to KALYAPPS.  If you send us a query or feedback via email, your email address will be visible to us and when a reply is necessary we will use your email address to contact you directly.",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Changes",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        fontStyle: FontStyle.italic,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      " This Privacy Policy may be updated from time to time for any reason. We will notify you of any changes to our Privacy Policy by posting the new Privacy Policy here. You are advised to consult this Privacy Policy regularly for any changes, as continued use is deemed approval of all changes.",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Contact Us",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        fontStyle: FontStyle.italic,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      " If you have any questions regarding privacy while using the Application, or have questions about our practices, please contact us via email at kalget12@gmail.com",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      " Effective: march 01, 2022",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }

  var _title = 'Menu';
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        exitDialog();
        return Future.value(false);
      },
      child: Scaffold(
        
        body: Container(
          
          child: ListView(
            children: <Widget>[
              const SizedBox(
                height: 10,
              ),
              const Text(
                "  Connect with us",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.w900,
                ),
              ),
              const SizedBox(height: 5),
              InkWell(
                child: ListTile(
                  leading: Icon(
                    Icons.message,
                    color: Colors.green,
                  ),
                  title: Text('Send Us Message'),
                  onTap: () {
                    _showFormDialog(context);
                  },
                ),
              ),
              const Divider(),
              Text(
                "  Policies",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.w900,
                ),
              ),
              const SizedBox(height: 5),
              InkWell(
                child: ListTile(
                  leading: Icon(
                    Icons.policy,
                    color: Colors.green,
                  ),
                  title: Text('Privacy Policy'),
                ),
                onTap: () {
                  _showPrivacyDialog(context);
                },
              ),
              Divider(),
              InkWell(
                child: ListTile(
                  leading: Icon(
                    Icons.rate_review,
                    color: Colors.green,
                  ),
                  title: Text('Rate and Review'),
                ),
                onTap: show,
              ),
              const Divider(),
              InkWell(
                child: ListTile(
                  leading: Icon(
                    Icons.contact_page,
                    color: Colors.green,
                  ),
                  title: Text('Contact Us'),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ContactPage()));
                  },
                ),
              ),
              const Divider(),
              InkWell(
                child: ListTile(
                  leading: Icon(
                    Icons.exit_to_app,
                    color: Colors.green,
                  ),
                  title: Text('Exit'),
                ),
                onTap: () {
                  exitDialog();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
