import 'package:flutter/material.dart';

class SchoolScreen extends StatelessWidget {
  SchoolScreen({super.key});
  final List<ImageData> imageDataList = [
    ImageData(
      imageUrl:
          'https://play-lh.googleusercontent.com/l6ykZiawUw_HCVB0Qo9sDRW5HkM4YUC5FstPbkFtTCWq3tzLQrcmaO1trPlN1Qsgtb6J',
      imageCaption: 'Aadarsha School of Hotel Management',
    ),
    ImageData(
      imageUrl:
          'https://play-lh.googleusercontent.com/E9_aaJYZG3UgwleHbUsC0CCVNyR8ikt8AdbFzYo8GVbI7yCJZZEPW4pBh7zaB2wLe07N',
      imageCaption: 'Aadarsh Vidhya Sadan School, Lalitpur',
    ),
    ImageData(
      imageUrl:
          'https://storage.googleapis.com/axios-documents/1674816509630axios=18422981605930.png',
      imageCaption: 'Aadhunik Boarding Secondary School',
    ),
    ImageData(
      imageUrl: 'https://www.academiacollege.edu.np/img/Logo/academia_logo.png',
      imageCaption: 'Academia International College, Lalitpur',
    ),
    ImageData(
      imageUrl:
          'https://creators.institute/aayaamdemo/wp-content/uploads/2021/12/logo-footer.png',
      imageCaption: 'Aayaam International College, Lalitpur',
    ),
    ImageData(
      imageUrl:
          'https://play-lh.googleusercontent.com/MLQTC2nNlvwJVPvakR-sfeHTyD0r1JY7YNmWoN5QA2oUeC0y9O_1_rvNffoTvQF10A',
      imageCaption: 'Abacus Boarding School',
    ),
    ImageData(
      imageUrl:
          'https://schoolabm.edu.np/wp-content/uploads/2020/07/Logo-Color.jpg',
      imageCaption: 'ABM School, Banepa',
    ),
    ImageData(
      imageUrl:
          'https://banner2.cleanpng.com/20180325/rgq/kisspng-education-school-computer-icons-clip-art-coin-5ab83c5be030d4.7184362115220235159183.jpg',
      imageCaption: 'Advance Chamuda Institute, Kathmandu',
    ),
    ImageData(
      imageUrl: 'https://aoc.com.np/public/uploads/source/aoc-logo-refine.png',
      imageCaption: 'Academy of Commerce (AOC), Putalisadak',
    ),
    ImageData(
      imageUrl:
          'https://wms.edigitalnepal.com/wms/files/ws-profile/1645768573467_51da3405-89b6-45c4-bedf-c33c7e844731.png',
      imageCaption: 'Acme Engineering College, Sitapaila',
    ),
    ImageData(
      imageUrl:
          'https://image.winudf.com/v2/image1/Y29tLmluc29mdG5lcGFsLnN0dWRlbnRleHByZXNzaW5zb2Z0LmFkYXJzYV9lbmdsaXNoX2ljb25fMTU5OTczNTQwNV8wMjg/icon.png?w=184&fakeurl=1',
      imageCaption: 'Adarsha English Boarding Secondary School',
    ),
    ImageData(
      imageUrl:
          'https://www.collegenp.com/uploads/2020/05/Advance-Academy,-Dhading.png',
      imageCaption: 'Advance Academy, Dhading',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'SCHOOLS',
          style: TextStyle(
            fontFamily: AutofillHints.addressCity,
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.start,
        ),
        backgroundColor: const Color(0xFF41a124),
        // backgroundColor: Colors.deepPurple,
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, // Number of columns in the grid
          crossAxisSpacing: 10.0, // Spacing between columns
          mainAxisSpacing: 40.0, // Spacing between rows
        ),
        itemCount: imageDataList.length, // Number of images in the grid
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(top: 4, left: 3, right: 3),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 0.8,
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    // padding: const EdgeInsets.only(top: 6, left: 10),
                    padding: const EdgeInsets.all(8),
                    child: Image.network(
                      imageDataList[index].imageUrl,
                      // width: MediaQuery.of(context).size.width,
                      height: 50,
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
