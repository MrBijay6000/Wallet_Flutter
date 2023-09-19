import 'package:flutter/material.dart';

class InternettScreen extends StatelessWidget {
  InternettScreen({super.key});
  final List<ImageData> imageDataList = [
    ImageData(
      imageUrl:
          'https://logoeps.com/wp-content/uploads/2013/06/ttnet-adsl-vector-logo.png',
      imageCaption: 'ADSL',
    ),
    ImageData(
      imageUrl:
          'https://d1yjjnpx0p53s8.cloudfront.net/styles/logo-thumbnail/s3/122022/wlink_logo3x.png?zcN78yGE6z1mFEqCyXOj2M0TaoOAByOi&itok=hBHUYLHq',
      imageCaption: 'Worldlink',
    ),
    ImageData(
      imageUrl:
          'https://www.vianet.com.np/wp-content/uploads/2021/03/vianet-log-white-bg-black.png',
      imageCaption: 'VIANET',
    ),
    ImageData(
      imageUrl:
          'https://api.v1.jobejee.com/v2/resource/employer-logo/645195a81635315022277.jpg',
      imageCaption: 'SUBISU',
    ),
    ImageData(
      imageUrl:
          'https://careerinnepal.com/uploads/company/logo/a4f55dd9f7d5a855e402d3472046978f.png',
      imageCaption: 'ARROWNET',
    ),
    ImageData(
      imageUrl:
          'https://cdn.nayathegana.com/media/2023/06/25/69a39677850f4a069daccbbf4bae6957.png',
      imageCaption: 'Prabhu Net',
    ),
    ImageData(
      imageUrl: 'https://dishhome.com.np/facebook_logo.webp',
      imageCaption: 'Dishhome FTTH',
    ),
    ImageData(
      imageUrl:
          'https://merojob.com//media/uploads/profile-pics/fdcfce45-2436-4226-a908-6d0bcd8a4052.jpg',
      imageCaption: 'Net Max',
    ),
    ImageData(
      imageUrl:
          'https://www.websurfer.com.np/images/3d-websurfer-logo-light-tagline.png',
      imageCaption: 'Websurfer',
    ),
    ImageData(
      imageUrl:
          'https://theeverestlist.org/storage/images/Top%2010%20Internet%20Service%20Providers%20In%20Nepal/Techminds.png',
      imageCaption: 'Techminds',
    ),
    ImageData(
      imageUrl:
          'https://www.nepalyp.com/img/np/b/1612573002-38-y-zone-pvt-ltd.png',
      imageCaption: 'Firstlink',
    ),
    ImageData(
      imageUrl: 'https://img.jobsnepal.com/logos/6069_final_logo.jpg',
      imageCaption: 'Pokhara Internet',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('INTERNET'),
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
            padding: const EdgeInsets.only(top: 4, left: 3, right: 3),
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
                    padding: const EdgeInsets.only(top: 4.5),
                    child: Image.network(
                      imageDataList[index].imageUrl,
                      width: MediaQuery.of(context).size.width,
                      height: 80,
                      fit: BoxFit.fill,
                    ),
                  ),
                  const SizedBox(
                      height: 10), // Add spacing between image and text
                  Text(imageDataList[index].imageCaption),
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
