// ignore_for_file: unused_import, avoid_web_libraries_in_flutter

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
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
        backgroundColor: Colors.green,
        title: Text(
          'mezmurDataModel.title',
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
                    fontSize: 17,
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
