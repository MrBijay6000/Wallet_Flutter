// import 'package:flutter/material.dart';

// class ImageSlider extends StatefulWidget {
//   const ImageSlider({super.key});
//   @override
//   _ImageSliderState createState() => _ImageSliderState();
// }

// class _ImageSliderState extends State<ImageSlider> {
//   final List<String> imageUrls = [
//     'assets/qr.png',
//     'assets/events.png',
//     'assets/attendance.png',
//   ];

//   int _currentPage = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Container(
//           height: 200,
//           child: PageView.builder(
//             itemCount: imageUrls.length,
//             onPageChanged: (int index) {
//               setState(() {
//                 _currentPage = index;
//               });
//             },
//             itemBuilder: (context, index) {
//               return Image.asset(
//                 imageUrls[index],
//                 fit: BoxFit.cover,
//               );
//             },
//           ),
//         ),
//         SizedBox(height: 10),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: List.generate(imageUrls.length, (index) {
//             return AnimatedContainer(
//               duration: Duration(milliseconds: 300),
//               margin: EdgeInsets.symmetric(horizontal: 4.0),
//               width: _currentPage == index ? 12.0 : 8.0,
//               height: _currentPage == index ? 12.0 : 8.0,
//               decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 color: _currentPage == index ? Colors.blue : Colors.grey,
//               ),
//             );
//           }),
//         ),
//       ],
//     );
//   }
// }
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Horizontal Scroll Example')),
        body: HorizontalScrollExample(),
      ),
    );
  }
}

class HorizontalScrollExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection:
          Axis.horizontal, // Set the scroll direction to horizontal
      children: <Widget>[
        Container(
          width: 200,
          color: Colors.red,
        ),
        Container(
          width: 200,
          color: Colors.blue,
        ),
        Container(
          width: 200,
          color: Colors.green,
        ),
        Container(
          width: 200,
          color: Colors.orange,
        ),
      ],
    );
  }
}
