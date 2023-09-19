import 'package:flutter/material.dart';

import 'package:wallet/screens/ncell.dart';

class DataScreen extends StatelessWidget {
  DataScreen({super.key});
  final List<ImageData> imageDataList = [
    ImageData(
      imageUrl:
          'https://3.bp.blogspot.com/-yXemJrXV2Pw/V8ZZLwWUGJI/AAAAAAAAA-k/jIaIA55wWRwOiKOts_fT1ZgWpdScRUDHACLcB/s640/timthumb.png',
      imageCaption: 'NT Package',
    ),
    ImageData(
      imageUrl:
          'https://webapi.ncell.axiata.com/upload/Brand%20assets/NcellLogo.png',
      imageCaption: 'Ncell',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DATA'),
        // backgroundColor: Colors.deepPurple,
        backgroundColor: const Color(0xFF41a124),
      ),
      // body: GridView.builder(
      //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      //     crossAxisCount: 1, // Number of columns in the grid
      //     crossAxisSpacing: 10.0, // Spacing between columns
      //     mainAxisSpacing: 10.0, // Spacing between rows
      //   ),
      //   itemCount: imageDataList.length, // Number of images in the grid
      //   itemBuilder: (BuildContext context, int index) {
      //     return Padding(
      //       padding: const EdgeInsets.only(top: 4),
      //       child: Container(
      //         decoration: BoxDecoration(
      //           border: Border.all(
      //             color: Colors.black,
      //             width: 0.5,
      //           ),
      //         ),
      //         child: Column(
      //           children: [
      //             Padding(
      //               padding: const EdgeInsets.only(top: 4.5),
      //               child: Image.network(
      //                 imageDataList[index].imageUrl,
      //                 width: MediaQuery.of(context).size.width,
      //                 height: 100,
      //                 fit: BoxFit.cover,
      //               ),
      //             ),
      //             const SizedBox(
      //                 height: 10), // Add spacing between image and text
      //             Text(imageDataList[index].imageCaption),
      //           ],
      //         ),
      //       ),
      //     );
      //   },
      // ),
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(5.0),
        margin: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (ctx) => const NcellScreen(),
                      ),
                    );
                  },
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width / 3 - 30,
                    // height: 100,
                    child: Column(
                      children: [
                        const SizedBox(height: 6),
                        Image.network(
                          'https://webapi.ncell.axiata.com/upload/Brand%20assets/NcellLogo.png',
                          width: 30,
                          // width: MediaQuery.of(context).size.width / 12,
                          alignment: Alignment.bottomCenter,
                          height: 30,
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'NCELL',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (ctx) => const NcellScreen(),
                      ),
                    );
                  },
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width / 4 - 30,
                    child: Column(
                      children: [
                        const SizedBox(height: 6),
                        Image.network(
                          'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b3/NepalTelecome.jpg/1200px-NepalTelecome.jpg',

                          width: 30,
                          // width: MediaQuery.of(context).size.width / 12,
                          alignment: Alignment.bottomCenter,
                          height: 30,
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'NTC',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (ctx) => const NcellScreen(),
                      ),
                    );
                  },
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width / 4 - 30,
                    child: Column(
                      children: [
                        const SizedBox(height: 6),
                        Image.network(
                          'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7f/Smartcell_logo.svg/1200px-Smartcell_logo.svg.png',

                          width: 30,
                          // width: MediaQuery.of(context).size.width / 12,
                          alignment: Alignment.bottomCenter,
                          height: 30,
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'SMART',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
                // GestureDetector(
                //   onTap: () {
                //     // Navigator.of(context).push(
                //     //   MaterialPageRoute(
                //     //     builder: (ctx) => const TopUp(),
                //     //   ),
                //     // );
                //   },
                //   child: SizedBox(
                //     width: MediaQuery.of(context).size.width / 4 - 30,
                //     child: Column(
                //       children: [
                //         const SizedBox(height: 6),
                //         Image.network(
                //           'https://img.freepik.com/premium-vector/quiz-logo_2728-12.jpg?w=2000',

                //           width: 30,
                //           // width: MediaQuery.of(context).size.width / 12,
                //           alignment: Alignment.bottomCenter,
                //           height: 30,
                //         ),
                //         const SizedBox(height: 10),
                //         const Text(
                //           'Khalti Quiz',
                //           style: TextStyle(
                //             fontSize: 16,
                //             fontWeight: FontWeight.w500,
                //           ),
                //           textAlign: TextAlign.center,
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
              ],
            ),
            const SizedBox(height: 40),
          ],
        ),
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
