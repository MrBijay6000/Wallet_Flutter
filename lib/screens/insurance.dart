import 'package:flutter/material.dart';

class InsuranceScreen extends StatelessWidget {
  InsuranceScreen({super.key});
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
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'INSURANCE',
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
          crossAxisCount: 3,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
        ),
        itemCount: imageDataList.length,
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
                    // padding: const EdgeInsets.only(top: 6, left: 10),
                    padding: const EdgeInsets.all(8),
                    child: Image.network(
                      imageDataList[index].imageUrl,
                      width: MediaQuery.of(context).size.width,
                      height: 60,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 10),
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

// import 'package:flutter/material.dart';

// class InsuranceScreen extends StatelessWidget {
//   List<String> images = [
//     "  https://lh3.googleusercontent.com/ZJcqTfNwd_rAhAZYreNQ314QcKA1fiANb6Z8xVC7qBHhrJyrLu5m5F8DH7lB-v3mHL11",
//     "https://dishhome.com.np/facebook_logo.webp",
//     "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
//     "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png"
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Flutter GridView Demo"),
//           backgroundColor: Colors.red,
//         ),
//         body: Container(
//             padding: EdgeInsets.all(12.0),
//             child: GridView.builder(
//               itemCount: images.length,
//               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 2,
//                   crossAxisSpacing: 4.0,
//                   mainAxisSpacing: 4.0),
//               itemBuilder: (BuildContext context, int index) {
//                 return Image.network(images[index]);
//               },
//             )),
//       ),
//     );
//   }
// }
