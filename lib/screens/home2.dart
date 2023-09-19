import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class HomeScreen2 extends StatefulWidget {
  const HomeScreen2({Key? key}) : super(key: key);

  @override
  State<HomeScreen2> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen2> {
  final List<String> imageUrls = [
    'assets/qr.png',
    'assets/events.png',
    'assets/attendance.png',
  ];

  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff3f6ff),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 140,
                  decoration: const BoxDecoration(
                    color: Color(0xFF0c76ae),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                      bottomLeft: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0),
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // const CircleAvatar(
                      //   radius: 22,
                      //   backgroundImage: NetworkImage(
                      //     'https://rukminim2.flixcart.com/image/850/1000/kyvvtzk0/poster/j/i/f/medium-naruto-shippuden-sharingan-mangekyou-sharingan-anime-original-imagbygkqdmbwgvj.jpeg?q=90',
                      //   ),
                      // ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, bottom: 20.0, top: 60.0),
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: NetworkImage(
                                  'https://rukminim2.flixcart.com/image/850/1000/kyvvtzk0/poster/j/i/f/medium-naruto-shippuden-sharingan-mangekyou-sharingan-anime-original-imagbygkqdmbwgvj.jpeg?q=90'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      // const Padding(padding: EdgeInsets.only(left: 10)),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, bottom: 20.0, top: 60.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Welcome',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width - 160,
                              child: const Text(
                                'Prasanna Dharel',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.white,
                                ),
                                maxLines: 1,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      const Padding(
                        padding: EdgeInsets.only(
                            left: 20.0, bottom: 20.0, top: 60.0),
                        child: Icon(
                          Icons.notifications_outlined,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(width: 20),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            // Container(
            //   height: 120,
            //   child: ImageSlideshow(
            //     indicatorColor: Colors.blue,
            //     onPageChanged: (value) {
            //       debugPrint('Page changed: $value');
            //     },
            //     autoPlayInterval: 3000,
            //     isLoop: true,
            //     children: [
            //       Image.asset(
            //         'assets/qr.png',
            //         fit: BoxFit.cover,
            //         width: 120,
            //       ),
            //       Image.asset(
            //         'assets/attendance.png',
            //         fit: BoxFit.cover,
            //       ),
            //       Image.asset(
            //         'assets/events.png',
            //         fit: BoxFit.cover,
            //       ),
            //     ],
            //   ),
            // ),

            const SizedBox(height: 16),
            Container(
              decoration: const BoxDecoration(
                color: Color(0xfff3f6ff),
              ),
              child: Column(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 1.1,
                    height: 120,
                    child: ImageSlideshow(
                      indicatorColor: Colors.blue,
                      onPageChanged: (value) {
                        debugPrint('Page changed: $value');
                      },
                      autoPlayInterval: 3000,
                      isLoop: true,
                      children: [
                        Image.asset(
                          'assets/qr.png',
                          fit: BoxFit.cover,
                          width: 120,
                        ),
                        Image.asset(
                          'assets/attendance.png',
                          fit: BoxFit.cover,
                        ),
                        Image.asset(
                          'assets/events.png',
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ),

                  // ImageSlideshow(
                  //   indicatorColor: Colors.blue,
                  //   onPageChanged: (value) {
                  //     debugPrint('Page changed: $value');
                  //   },
                  //   autoPlayInterval: 3000,
                  //   isLoop: true,
                  //   children: [
                  //     Image.asset(
                  //       'assets/qr.png',
                  //       fit: BoxFit.cover,
                  //       width: 120,
                  //     ),
                  //     Image.asset(
                  //       'assets/attendance.png',
                  //       fit: BoxFit.cover,
                  //     ),
                  //     Image.asset(
                  //       'assets/events.png',
                  //       fit: BoxFit.cover,
                  //     ),
                  //   ],
                  // ),
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        width: MediaQuery.of(context).size.width / 2.5,
                        //height: 100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/attendance.png',
                              width: 60,
                              alignment: Alignment.bottomCenter,
                              height: 60,
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'Attendance',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        width: MediaQuery.of(context).size.width / 2.5,
                        //height: 100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/leave.png',
                              width: 60,
                              height: 60,
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'Leave',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        width: MediaQuery.of(context).size.width / 2.5,
                        //height: 100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/tracking.png',
                              width: 60,
                              alignment: Alignment.bottomCenter,
                              height: 60,
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'Tracking',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        width: MediaQuery.of(context).size.width / 2.5,
                        //height: 100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/events.png',
                              width: 60,
                              height: 60,
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'Events',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        width: MediaQuery.of(context).size.width / 2.5,
                        //height: 100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/payslip.png',
                              width: 60,
                              alignment: Alignment.bottomCenter,
                              height: 60,
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'Pay Slip',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        width: MediaQuery.of(context).size.width / 2.5,
                        //height: 100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/qr.png',
                              width: 60,
                              height: 60,
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'QR',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 0),
                  // Padding(padding: EdgeInsets.only(left: 1200)),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      //padding: EdgeInsets.all(10),
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        'Best Employee',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 0),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20.0, right: 20.0, top: 0),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      //width: 350,
                      height: 80,
                      child: Row(
                        children: [
                          const Padding(padding: EdgeInsets.only(left: 6)),

                          Image.network(
                            'https://static.vecteezy.com/system/resources/thumbnails/000/211/023/small/CUSTOMER_SERVICE_CHARACTER.jpg',
                            height: 100,
                            width: 100,
                          ),

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const [
                                Text(
                                  'Anil Karki',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text('Employee of the month'),
                              ],
                            ),
                          ),

                          // Column(
                          //   children: [
                          //     Text('Anil Karkiii'),
                          //   ],
                          // )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        decoration: const BoxDecoration(
                          color: Color(0xff31b377),
                        ),
                        height: 50,
                        // width: 180,
                        width: MediaQuery.of(context).size.width / 2.8,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Text(
                              'Check In',
                              style: TextStyle(
                                fontSize: 24,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          color: Color(0xFFff3f3c),
                        ),
                        height: 50,
                        // width: 180,
                        width: MediaQuery.of(context).size.width / 2.8,

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Text(
                              'Check Out',
                              style: TextStyle(
                                fontSize: 24,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: <Widget>[
            //     Container(
            //       decoration: const BoxDecoration(
            //         color: Color(0xff31b377),
            //       ),
            //       height: 50,
            //       width: 180,
            //       child: Column(
            //         mainAxisAlignment: MainAxisAlignment.center,
            //         crossAxisAlignment: CrossAxisAlignment.center,
            //         children: const [
            //           Text(
            //             'Check In',
            //             style: TextStyle(
            //               fontSize: 24,
            //               color: Colors.white,
            //               fontWeight: FontWeight.bold,
            //             ),
            //             textAlign: TextAlign.center,
            //           ),
            //         ],
            //       ),
            //     ),
            //     Container(
            //       decoration: const BoxDecoration(
            //         color: Color(0xFFff3f3c),
            //       ),
            //       height: 50,
            //       width: 180,
            //       child: Column(
            //         mainAxisAlignment: MainAxisAlignment.center,
            //         crossAxisAlignment: CrossAxisAlignment.center,
            //         children: const [
            //           Text(
            //             'Check Out',
            //             style: TextStyle(
            //               fontSize: 24,
            //               color: Colors.white,
            //               fontWeight: FontWeight.bold,
            //             ),
            //             textAlign: TextAlign.center,
            //           ),
            //         ],
            //       ),
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
