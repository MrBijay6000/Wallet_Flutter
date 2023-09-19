import 'package:flutter/material.dart';

class TVScreen extends StatelessWidget {
  TVScreen({super.key});
  final List<ImageData> imageDataList = [
    ImageData(
      imageUrl:
          'https://lh3.googleusercontent.com/ZJcqTfNwd_rAhAZYreNQ314QcKA1fiANb6Z8xVC7qBHhrJyrLu5m5F8DH7lB-v3mHL11',
      imageCaption: 'Net TV (IPTV)',
    ),
    ImageData(
      imageUrl: 'https://dishhome.com.np/facebook_logo.webp',
      imageCaption: 'Dishhome Regular',
    ),
    ImageData(
      imageUrl: 'https://dishhome.com.np/facebook_logo.webp',
      imageCaption: 'Dishhome Combo',
    ),
    ImageData(
      imageUrl: 'https://dishhome.com.np/facebook_logo.webp',
      imageCaption: 'Dishhome Offer Recharge',
    ),
    ImageData(
      imageUrl:
          'https://cdn.nayathegana.com/media/2022/07/29/dff3e61c198b41aa9d4da2bf16ec5ce0.png',
      imageCaption: 'Sim TV',
    ),
    ImageData(
      imageUrl:
          'https://maxdigitaltv.com/home/wp-content/uploads/2019/09/max-tv-logo-new-1.png',
      imageCaption: 'Max TV',
    ),
    ImageData(
      imageUrl:
          'https://cdn4.vectorstock.com/i/1000x1000/84/68/logo-for-cinema-hall-vector-23108468.jpg',
      imageCaption: 'Dishhome Cinema Ghar',
    ),
    ImageData(
      imageUrl:
          'https://english.onlinekhabar.com/wp-content/uploads/2021/06/CLEAR-TV-1024x536-2.jpg',
      imageCaption: 'Clear TV',
    ),
    ImageData(
      imageUrl: 'https://merotv.com.np/images/logo_merotv.png',
      imageCaption: 'Mero TV',
    ),
    ImageData(
      imageUrl:
          'https://logos-world.net/wp-content/uploads/2021/02/Sky-Emblem.jpg',
      imageCaption: 'Sky TV',
    ),
    ImageData(
      imageUrl:
          'https://e7.pngegg.com/pngimages/181/504/png-clipart-logo-brand-television-visiontv-design-television-text.png',
      imageCaption: '3G Vision',
    ),
    ImageData(
      imageUrl:
          'https://static.wikia.nocookie.net/robloxtv/images/8/8e/BBN_logo.png/revision/latest/scale-to-width-down/1090?cb=20150305181617',
      imageCaption: 'BBN',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'TV',
          style: TextStyle(
            fontFamily: AutofillHints.addressCity,
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.start,
        ),
        // backgroundColor: Colors.deepPurple,
        backgroundColor: const Color(0xFF41a124),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, // Number of columns in the grid
          crossAxisSpacing: 10.0, // Spacing between columns
          mainAxisSpacing: 10.0, // Spacing between rows
        ),
        itemCount: imageDataList.length, // Number of images in the grid
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(top: 4),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 0.5,
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    // padding: const EdgeInsets.only(top: 6, left: 10),
                    padding: const EdgeInsets.all(8),
                    child: Image.network(
                      imageDataList[index].imageUrl,
                      width: MediaQuery.of(context).size.width,
                      height: 60,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                      height: 10), // Add spacing between image and text
                  Text(
                    imageDataList[index].imageCaption,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
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
