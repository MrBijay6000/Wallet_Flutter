import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ImageGridView1(),
    );
  }
}

class ImageGridView1 extends StatelessWidget {
  final List<String> imageUrls = [
    'https://static.vecteezy.com/system/resources/previews/010/518/697/original/wireless-router-repeater-icon-for-graphic-design-logo-web-site-social-media-mobile-app-ui-illustration-vector.jpg',
    'https://cdn2.vectorstock.com/i/1000x1000/01/16/graduation-hat-icon-simple-college-diploma-vector-39330116.jpg',
    'https://static.vecteezy.com/system/resources/previews/007/688/855/original/tv-logo-free-vector.jpg',
    'https://static.thenounproject.com/png/3593515-200.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Grid View'),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Number of columns in the grid
          crossAxisSpacing: 10.0, // Spacing between columns
          mainAxisSpacing: 10.0, // Spacing between rows
        ),
        itemCount: imageUrls.length, // Number of images in the grid
        itemBuilder: (BuildContext context, int index) {
          return Image.network(
            imageUrls[index],
            fit: BoxFit.cover,
          );
        },
      ),
    );
  }
}
