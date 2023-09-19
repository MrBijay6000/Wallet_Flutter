// import 'package:flutter/material.dart';

// class Grid extends StatelessWidget {
//   const Grid({super.key});

//   @override
//   Widget build(BuildContext context) {
//     const title = 'Grid List';

//     return MaterialApp(
//       title: title,
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text(title),
//         ),
//         body: GridView.count(
//           crossAxisCount: 4,
//           // Generate 100 widgets that display their index in the List.
//           children: List.generate(100, (index) {
//             return Center(
//               child: Text(
//                 'Item $index',
//                 style: Theme.of(context).textTheme.headlineSmall,
//               ),
//             );
//           }),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ImageGridView(),
    );
  }
}

class ImageGridView extends StatelessWidget {
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
        itemCount: 4, // Number of images in the grid
        itemBuilder: (BuildContext context, int index) {
          return Image.network(
            'https://static.vecteezy.com/system/resources/previews/010/518/697/original/wireless-router-repeater-icon-for-graphic-design-logo-web-site-social-media-mobile-app-ui-illustration-vector.jpg',
            fit: BoxFit.cover,
          );
        },
      ),
    );
  }
}
