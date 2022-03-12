import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

import '../../main.dart';
import '../home_page.dart';

class GalleryPage extends StatelessWidget {
  final imageList = [
    'assets/images/photo1.jpg',
    'assets/images/photo2.jpg',
    'assets/images/photo3.jpg',
    'assets/images/photo4.jpg',
    'assets/images/photo5.jpg',
    'assets/images/photo6.jpg',
    'assets/images/photo7.jpg',
    'assets/images/photo8.jpg',
    'assets/images/photo9.jpg',
    'assets/images/photo10.jpg',
    'assets/images/photo11.jpg',
    'assets/images/photo12.jpg',
    'assets/images/photo13.jpg',
    'assets/images/photo14.jpg',
    'assets/images/photo15.jpg',
    'assets/images/photo16.jpg',
    'assets/images/photo17.jpg',
    'assets/images/photo18.jpg',
    'assets/images/photo19.jpg',
    'assets/images/photo20.jpg',
    'assets/images/photo21.jpg',
    'assets/images/photo22.jpg',
    'assets/images/photo23.jpg',
    'assets/images/photo23.jpg',
    'assets/images/photo24.jpg',
    'assets/images/photo25.jpg',
    'assets/images/photo26.jpg',
    'assets/images/photo27.jpg',
    'assets/images/photo28.jpg',
    'assets/images/photo29.jpg',
    'assets/images/photo30.jpg',
    'assets/images/photo31.jpg',
    'assets/images/photo32.jpg',
    'assets/images/photo33.jpg',
    'assets/images/photo34.jpg',
    'assets/images/photo35.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gallery'),
        backgroundColor: MyApp.themeNotifier.value == ThemeMode.light
            ? Colors.green
            : Color.fromARGB(255, 102, 97, 97),
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
            icon: Icon(Icons.arrow_back)),
      ),
      // Implemented with a PageView, simpler than setting it up yourself
      // You can either specify images directly or by using a builder as in this tutorial
      body: PhotoViewGallery.builder(
        scrollDirection: Axis.horizontal,
        itemCount: imageList.length,
        builder: (context, index) {
          return PhotoViewGalleryPageOptions(
            imageProvider: AssetImage(
              imageList[index],
            ),
            // Contained = the smallest possible size to fit one dimension of the screen
            minScale: PhotoViewComputedScale.contained * 0.8,
            // Covered = the smallest possible size to fit the whole screen
            maxScale: PhotoViewComputedScale.covered * 2,
          );
        },

        // Set the background color to the "classic white"
        backgroundDecoration: BoxDecoration(
          color: Theme.of(context).canvasColor,
        ),
      ),
    );
  }
}
