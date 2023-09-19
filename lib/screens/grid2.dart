import 'package:flutter/material.dart';

class ImageGridView2 extends StatelessWidget {
  ImageGridView2({super.key});
  final List<ImageData> imageDataList = [
    ImageData(
      imageUrl:
          'https://static.vecteezy.com/system/resources/previews/010/518/697/original/wireless-router-repeater-icon-for-graphic-design-logo-web-site-social-media-mobile-app-ui-illustration-vector.jpg',
      imageCaption: '1',
    ),
    ImageData(
      imageUrl:
          'https://cdn2.vectorstock.com/i/1000x1000/01/16/graduation-hat-icon-simple-college-diploma-vector-39330116.jpg',
      imageCaption: 'Image 2',
    ),
    ImageData(
      imageUrl:
          'https://static.vecteezy.com/system/resources/previews/007/688/855/original/tv-logo-free-vector.jpg',
      imageCaption: 'Image 3',
    ),
    ImageData(
      imageUrl: 'https://static.thenounproject.com/png/3593515-200.png',
      imageCaption: 'Image 4',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Grid View with Text'),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, // Number of columns in the grid
          crossAxisSpacing: 10.0, // Spacing between columns
          mainAxisSpacing: 10.0, // Spacing between rows
        ),
        itemCount: imageDataList.length, // Number of images in the grid
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              Image.network(
                imageDataList[index].imageUrl,
                width: 900,
                height: 100,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 10), // Add spacing between image and text
              Text(imageDataList[index].imageCaption),
            ],
          );
        },
      ),
    );
  }
}

class ImageData {
  final String imageUrl;
  final String imageCaption;

  ImageData({
    required this.imageUrl,
    required this.imageCaption,
  });
}
