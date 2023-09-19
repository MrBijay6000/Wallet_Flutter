import 'package:flutter/material.dart';

import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:wallet/screens/data.dart';
import 'package:wallet/screens/electricity.dart';
import 'package:wallet/screens/flight.dart';
import 'package:wallet/screens/insurance.dart';
import 'package:wallet/screens/internet.dart';
import 'package:wallet/screens/landline.dart';
import 'package:wallet/screens/school.dart';
import 'package:wallet/screens/send.dart';
import 'package:wallet/screens/topup.dart';
import 'package:wallet/screens/tv.dart';

import 'banktransfer.dart';

class BankingWalletHome extends StatefulWidget {
  const BankingWalletHome({Key? key}) : super(key: key);

  @override
  State<BankingWalletHome> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<BankingWalletHome> {
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
                    // color: Color(0xFF0c76ae),
                    // color: (Color.fromARGB(255, 21, 2, 53)),
                    color: Color(0xFF41a124),

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
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 20.0,
                          bottom: 20.0,
                          top: 60.0,
                        ),
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
                                'XXX',
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
            Padding(
              padding: const EdgeInsets.only(bottom: 0, top: 20, left: 20),
              child: Container(
                // padding: EdgeInsets.all(10),
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Recharge and Bill Payments',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8),
            // Container(
            //   width: MediaQuery.of(context).size.width,
            //   decoration: const BoxDecoration(
            //     color: Color(0xfff3f6ff),
            //     // color: Colors.black,
            //   ),
            //   child: Column(
            //     children: [
            //       const SizedBox(height: 6),
            //       Row(
            //         mainAxisAlignment: MainAxisAlignment.start,
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         children: <Widget>[
            //           Container(
            //             width: MediaQuery.of(context).size.width,
            //             padding: const EdgeInsets.all(10),
            //             decoration: BoxDecoration(
            //               color: Colors.white,
            //               // color: Colors.yellow,
            //               borderRadius: BorderRadius.circular(16.0),
            //             ),
            //             // width: MediaQuery.of(context).size.width / 2.5,
            //             //height: 100,
            //             child: Row(
            //               mainAxisAlignment: MainAxisAlignment.start,
            //               crossAxisAlignment: CrossAxisAlignment.start,
            //               children: [
            //                 Column(
            //                   children: [
            //                     const SizedBox(height: 6),
            //                     GestureDetector(
            //                       onTap: () {
            //                         Navigator.of(context).push(
            //                           MaterialPageRoute(
            //                             builder: (ctx) => const TopUp(),
            //                           ),
            //                         );
            //                       },
            //                       child: Image.network(
            //                         'https://static.thenounproject.com/png/3593515-200.png',
            //                         width: 30,
            //                         // width: MediaQuery.of(context).size.width / 12,
            //                         alignment: Alignment.bottomCenter,
            //                         height: 30,
            //                       ),
            //                     ),
            //                     const SizedBox(height: 10),
            //                     const Text(
            //                       'Topup',
            //                       style: TextStyle(
            //                         fontSize: 16,
            //                         fontWeight: FontWeight.w500,
            //                       ),
            //                       textAlign: TextAlign.center,
            //                     ),
            //                     const SizedBox(height: 35),
            //                     GestureDetector(
            //                       onTap: () {
            //                         Navigator.of(context).push(
            //                           MaterialPageRoute(
            //                             builder: (ctx) => TVScreen(),
            //                           ),
            //                         );
            //                       },
            //                       child: Image.network(
            //                         'https://static.vecteezy.com/system/resources/previews/007/688/855/original/tv-logo-free-vector.jpg',
            //                         width: 30,
            //                         alignment: Alignment.bottomCenter,
            //                         height: 30,
            //                       ),
            //                     ),
            //                     const SizedBox(height: 10),
            //                     const Text(
            //                       'TV',
            //                       style: TextStyle(
            //                         fontSize: 16,
            //                         fontWeight: FontWeight.w500,
            //                       ),
            //                       textAlign: TextAlign.center,
            //                     ),
            //                     const SizedBox(height: 35),
            //                     Image.network(
            //                       'https://cdn2.vectorstock.com/i/1000x1000/01/16/graduation-hat-icon-simple-college-diploma-vector-39330116.jpg',
            //                       width: 30,
            //                       alignment: Alignment.bottomCenter,
            //                       height: 30,
            //                     ),
            //                     const SizedBox(height: 10),
            //                     const Text(
            //                       'School',
            //                       style: TextStyle(
            //                         fontSize: 16,
            //                         fontWeight: FontWeight.w500,
            //                       ),
            //                       textAlign: TextAlign.center,
            //                     ),
            //                     const SizedBox(height: 35),
            //                     Image.network(
            //                       'https://img.freepik.com/premium-vector/logo-vector-minimalist-design-circle-spin-colorful-concept-minimalism-technology_790567-360.jpg?w=2000',
            //                       width: 30,
            //                       alignment: Alignment.bottomCenter,
            //                       height: 30,
            //                     ),
            //                     const SizedBox(height: 10),
            //                     const Text(
            //                       'Events',
            //                       style: TextStyle(
            //                         fontSize: 16,
            //                         fontWeight: FontWeight.w500,
            //                       ),
            //                       textAlign: TextAlign.center,
            //                     ),
            //                   ],
            //                 ),
            //                 const SizedBox(width: 20),
            //                 GestureDetector(
            //                   onTap: () {
            //                     Navigator.of(context).push(
            //                       MaterialPageRoute(
            //                         builder: (ctx) => InternettScreen(),
            //                       ),
            //                     );
            //                   },
            //                   child: Column(
            //                     children: [
            //                       Image.network(
            //                         'https://static.vecteezy.com/system/resources/previews/010/518/697/original/wireless-router-repeater-icon-for-graphic-design-logo-web-site-social-media-mobile-app-ui-illustration-vector.jpg',
            //                         width: 30,
            //                         alignment: Alignment.bottomCenter,
            //                         height: 30,
            //                       ),
            //                       const SizedBox(height: 10),
            //                       const Text(
            //                         'Internet',
            //                         style: TextStyle(
            //                           fontSize: 16,
            //                           fontWeight: FontWeight.w500,
            //                         ),
            //                         textAlign: TextAlign.center,
            //                       ),
            //                       const SizedBox(height: 35),
            //                       Image.network(
            //                         'https://cdn4.vectorstock.com/i/1000x1000/76/28/c-water-drop-logo-vector-28947628.jpg',
            //                         width: 30,
            //                         alignment: Alignment.bottomCenter,
            //                         height: 30,
            //                       ),
            //                       const SizedBox(height: 10),
            //                       const Text(
            //                         'Water',
            //                         style: TextStyle(
            //                           fontSize: 16,
            //                           fontWeight: FontWeight.w500,
            //                         ),
            //                         textAlign: TextAlign.center,
            //                       ),
            //                       const SizedBox(height: 35),
            //                       Image.network(
            //                         'https://freerangestock.com/sample/118516/black-umbrella-symbol.jpg',
            //                         width: 30,
            //                         alignment: Alignment.bottomCenter,
            //                         height: 30,
            //                       ),
            //                       const SizedBox(height: 10),
            //                       const Text(
            //                         'Insurance',
            //                         style: TextStyle(
            //                           fontSize: 16,
            //                           fontWeight: FontWeight.w500,
            //                         ),
            //                         textAlign: TextAlign.center,
            //                       ),
            //                       const SizedBox(height: 35),
            //                       Image.network(
            //                         'https://t4.ftcdn.net/jpg/03/96/55/29/360_F_396552956_VAZMfge1XgKaCY3UWOglYHdk7UNaPPck.jpg',
            //                         width: 30,
            //                         alignment: Alignment.bottomCenter,
            //                         height: 30,
            //                       ),
            //                       const SizedBox(height: 10),
            //                       const Text(
            //                         'Bus Ticket',
            //                         style: TextStyle(
            //                           fontSize: 16,
            //                           fontWeight: FontWeight.w500,
            //                         ),
            //                         textAlign: TextAlign.center,
            //                       ),
            //                     ],
            //                   ),
            //                 ),
            //                 const SizedBox(width: 20),
            //                 GestureDetector(
            //                   onTap: () {
            //                     Navigator.of(context).push(
            //                       MaterialPageRoute(
            //                         builder: (ctx) => const LandLine(),
            //                       ),
            //                     );
            //                   },
            //                   child: Column(
            //                     children: [
            //                       Image.network(
            //                         'https://clipart-library.com/image_gallery2/Telephone.png',
            //                         width: 30,
            //                         alignment: Alignment.bottomCenter,
            //                         height: 30,
            //                       ),
            //                       const SizedBox(height: 10),
            //                       const Text(
            //                         'Landline',
            //                         style: TextStyle(
            //                           fontSize: 16,
            //                           fontWeight: FontWeight.w500,
            //                         ),
            //                         textAlign: TextAlign.center,
            //                       ),
            //                       const SizedBox(height: 35),
            //                       Image.network(
            //                         'https://e7.pngegg.com/pngimages/503/7/png-clipart-airplane-logo-flight-attendant-air-travel-airplane-aviation-avion-text-logo.png',
            //                         width: 30,
            //                         alignment: Alignment.bottomCenter,
            //                         height: 30,
            //                       ),
            //                       const SizedBox(height: 10),
            //                       const Text(
            //                         'Flight',
            //                         style: TextStyle(
            //                           fontSize: 16,
            //                           fontWeight: FontWeight.w500,
            //                         ),
            //                         textAlign: TextAlign.center,
            //                       ),
            //                       const SizedBox(height: 35),
            //                       Image.network(
            //                         'https://cdn.sanity.io/images/kts928pd/production/4d57e064de16f884d2279fe189f5f98c33ce6014-731x731.jpg',
            //                         width: 30,
            //                         alignment: Alignment.bottomCenter,
            //                         height: 30,
            //                       ),
            //                       const SizedBox(height: 10),
            //                       const Text(
            //                         'Data',
            //                         style: TextStyle(
            //                           fontSize: 16,
            //                           fontWeight: FontWeight.w500,
            //                         ),
            //                         textAlign: TextAlign.center,
            //                       ),
            //                       const SizedBox(height: 35),
            //                       Image.network(
            //                         'https://static.vecteezy.com/system/resources/previews/005/365/006/original/cable-car-inspiration-illustration-logo-on-the-mountain-vector.jpg',
            //                         width: 30,
            //                         alignment: Alignment.bottomCenter,
            //                         height: 30,
            //                       ),
            //                       const SizedBox(height: 10),
            //                       const Text(
            //                         'Cable Car',
            //                         style: TextStyle(
            //                           fontSize: 16,
            //                           fontWeight: FontWeight.w500,
            //                         ),
            //                         textAlign: TextAlign.center,
            //                       ),
            //                     ],
            //                   ),
            //                 ),
            //                 const SizedBox(width: 20),
            //                 Column(
            //                   children: [
            //                     Image.network(
            //                       'https://cdn3.vectorstock.com/i/1000x1000/09/17/electricity-logo-circle-electric-logo-icon-vector-27370917.jpg',
            //                       width: 30,
            //                       alignment: Alignment.bottomCenter,
            //                       height: 30,
            //                     ),
            //                     const SizedBox(height: 10),
            //                     const Text(
            //                       'Electricity',
            //                       style: TextStyle(
            //                         fontSize: 16,
            //                         fontWeight: FontWeight.w500,
            //                       ),
            //                       textAlign: TextAlign.center,
            //                     ),
            //                     const SizedBox(height: 35),
            //                     Image.network(
            //                       'https://img.freepik.com/premium-vector/colorful-movie-logo_18099-26.jpg',
            //                       width: 30,
            //                       alignment: Alignment.bottomCenter,
            //                       height: 30,
            //                     ),
            //                     const SizedBox(height: 10),
            //                     const Text(
            //                       'Movie',
            //                       style: TextStyle(
            //                         fontSize: 16,
            //                         fontWeight: FontWeight.w500,
            //                       ),
            //                       textAlign: TextAlign.center,
            //                     ),
            //                     const SizedBox(height: 35),
            //                     Image.network(
            //                       'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUwINjrDDyMxX_kx4cO6gIDQPj9LFtnGjq7tQ-UvTCTCHVkaEcu9LpEqgUaFRc_R4EnuM&usqp=CAU',
            //                       width: 30,
            //                       alignment: Alignment.bottomCenter,
            //                       height: 30,
            //                     ),
            //                     const SizedBox(height: 10),
            //                     const Text(
            //                       'Government',
            //                       style: TextStyle(
            //                         fontSize: 16,
            //                         fontWeight: FontWeight.w500,
            //                       ),
            //                       textAlign: TextAlign.center,
            //                     ),
            //                     const SizedBox(height: 35),
            //                     Image.network(
            //                       'https://img2.pngdownload.id/20180515/lq/kisspng-computer-icons-drop-down-list-menu-arrow-computer-5afb9d32948639.0346789315264392186084.jpg',
            //                       width: 30,
            //                       alignment: Alignment.bottomCenter,
            //                       height: 30,
            //                     ),
            //                     const SizedBox(height: 10),
            //                     const Text(
            //                       'View More',
            //                       style: TextStyle(
            //                         fontSize: 16,
            //                         fontWeight: FontWeight.w500,
            //                       ),
            //                       textAlign: TextAlign.center,
            //                     ),
            //                   ],
            //                 ),
            //               ],
            //             ),
            //           ),
            //         ],
            //       ),
            //     ],
            //   ),
            // ),
            Container(
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
                              builder: (ctx) => const TopUp(),
                            ),
                          );
                        },
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width / 4 - 30,
                          // height: 100,
                          child: Column(
                            children: [
                              const SizedBox(height: 6),
                              Image.network(
                                'https://static.thenounproject.com/png/3593515-200.png',
                                width: 30,
                                // width: MediaQuery.of(context).size.width / 12,
                                alignment: Alignment.bottomCenter,
                                height: 30,
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                'Topup',
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
                              builder: (ctx) => TVScreen(),
                            ),
                          );
                        },
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width / 4 - 30,
                          child: Column(
                            children: [
                              const SizedBox(height: 6),
                              Image.network(
                                'https://static.vecteezy.com/system/resources/previews/007/688/855/original/tv-logo-free-vector.jpg',
                                width: 30,
                                // width: MediaQuery.of(context).size.width / 12,
                                alignment: Alignment.bottomCenter,
                                height: 30,
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                'TV',
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
                              builder: (ctx) => SchoolScreen(),
                            ),
                          );
                        },
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width / 4 - 30,
                          child: Column(
                            children: [
                              const SizedBox(height: 6),
                              Image.network(
                                'https://cdn2.vectorstock.com/i/1000x1000/01/16/graduation-hat-icon-simple-college-diploma-vector-39330116.jpg',

                                width: 30,
                                // width: MediaQuery.of(context).size.width / 12,
                                alignment: Alignment.bottomCenter,
                                height: 30,
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                'School',
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
                              builder: (ctx) => InternettScreen(),
                            ),
                          );
                        },
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width / 4 - 30,
                          child: Column(
                            children: [
                              const SizedBox(height: 6),
                              Image.network(
                                'https://static.vecteezy.com/system/resources/previews/010/518/697/original/wireless-router-repeater-icon-for-graphic-design-logo-web-site-social-media-mobile-app-ui-illustration-vector.jpg',
                                width: 30,
                                // width: MediaQuery.of(context).size.width / 12,
                                alignment: Alignment.bottomCenter,
                                height: 30,
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                'Internet',
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
                    ],
                  ),
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx) => const ElectricityScreen(),
                            ),
                          );
                        },
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width / 4 - 30,
                          // height: 100,
                          child: Column(
                            children: [
                              const SizedBox(height: 6),
                              Image.network(
                                'https://cdn3.vectorstock.com/i/1000x1000/09/17/electricity-logo-circle-electric-logo-icon-vector-27370917.jpg',

                                width: 30,
                                // width: MediaQuery.of(context).size.width / 12,
                                alignment: Alignment.bottomCenter,
                                height: 30,
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                'Electricity',
                                style: TextStyle(
                                  fontSize: 14,
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
                              builder: (ctx) => const TopUp(),
                            ),
                          );
                        },
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width / 4 - 30,
                          child: Column(
                            children: [
                              const SizedBox(height: 6),
                              Image.network(
                                'https://cdn4.vectorstock.com/i/1000x1000/76/28/c-water-drop-logo-vector-28947628.jpg',
                                width: 30,
                                // width: MediaQuery.of(context).size.width / 12,
                                alignment: Alignment.bottomCenter,
                                height: 30,
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                'Water',
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
                              builder: (ctx) => const FlightScreen(),
                            ),
                          );
                        },
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width / 4 - 30,
                          child: Column(
                            children: [
                              const SizedBox(height: 6),
                              Image.network(
                                'https://e7.pngegg.com/pngimages/503/7/png-clipart-airplane-logo-flight-attendant-air-travel-airplane-aviation-avion-text-logo.png',

                                width: 30,
                                // width: MediaQuery.of(context).size.width / 12,
                                alignment: Alignment.bottomCenter,
                                height: 30,
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                'Flight',
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
                              builder: (ctx) => const TopUp(),
                            ),
                          );
                        },
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width / 4 - 30,
                          child: Column(
                            children: [
                              const SizedBox(height: 6),
                              Image.network(
                                'https://img.freepik.com/premium-vector/colorful-movie-logo_18099-26.jpg',

                                width: 30,
                                // width: MediaQuery.of(context).size.width / 12,
                                alignment: Alignment.bottomCenter,
                                height: 30,
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                'Movie',
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
                    ],
                  ),
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx) => const LandLine(),
                            ),
                          );
                        },
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width / 4 - 30,
                          // height: 100,
                          child: Column(
                            children: [
                              const SizedBox(height: 6),
                              Image.network(
                                'https://clipart-library.com/image_gallery2/Telephone.png',
                                width: 30,
                                // width: MediaQuery.of(context).size.width / 12,
                                alignment: Alignment.bottomCenter,
                                height: 30,
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                'Landline',
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
                              builder: (ctx) => InsuranceScreen(),
                            ),
                          );
                        },
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width / 4 - 30,
                          child: Column(
                            children: [
                              const SizedBox(height: 6),
                              Image.network(
                                'https://freerangestock.com/sample/118516/black-umbrella-symbol.jpg',

                                width: 30,
                                // width: MediaQuery.of(context).size.width / 12,
                                alignment: Alignment.bottomCenter,
                                height: 30,
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                'Insurance',
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
                              builder: (ctx) => DataScreen(),
                            ),
                          );
                        },
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width / 4 - 30,
                          child: Column(
                            children: [
                              const SizedBox(height: 6),
                              Image.network(
                                'https://icons-for-free.com/iconfiles/png/512/data+internet+mobile+network+transfer+icon-1320086210381587034.png',
                                // 'https://cdn.sanity.io/images/kts928pd/production/4d57e064de16f884d2279fe189f5f98c33ce6014-731x731.jpg',
                                width: 30,
                                // width: MediaQuery.of(context).size.width / 12,
                                alignment: Alignment.bottomCenter,
                                height: 30,
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                'Data',
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
                              builder: (ctx) => const TopUp(),
                            ),
                          );
                        },
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width / 4 - 30,
                          child: Column(
                            children: [
                              const SizedBox(height: 6),
                              Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUwINjrDDyMxX_kx4cO6gIDQPj9LFtnGjq7tQ-UvTCTCHVkaEcu9LpEqgUaFRc_R4EnuM&usqp=CAU',

                                width: 30,
                                // width: MediaQuery.of(context).size.width / 12,
                                alignment: Alignment.bottomCenter,
                                height: 30,
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                'Government',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx) => const TopUp(),
                            ),
                          );
                        },
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width / 4 - 30,
                          // height: 100,
                          child: Column(
                            children: [
                              const SizedBox(height: 6),
                              Image.network(
                                'https://img.freepik.com/premium-vector/logo-vector-minimalist-design-circle-spin-colorful-concept-minimalism-technology_790567-360.jpg?w=2000',

                                width: 30,
                                // width: MediaQuery.of(context).size.width / 12,
                                alignment: Alignment.bottomCenter,
                                height: 30,
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
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx) => const TopUp(),
                            ),
                          );
                        },
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width / 4 - 30,
                          child: Column(
                            children: [
                              const SizedBox(height: 6),
                              Image.network(
                                'https://t4.ftcdn.net/jpg/03/96/55/29/360_F_396552956_VAZMfge1XgKaCY3UWOglYHdk7UNaPPck.jpg',
                                width: 30,
                                // width: MediaQuery.of(context).size.width / 12,
                                alignment: Alignment.bottomCenter,
                                height: 30,
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                'Bus Ticket',
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
                              builder: (ctx) => const TopUp(),
                            ),
                          );
                        },
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width / 4 - 30,
                          child: Column(
                            children: [
                              const SizedBox(height: 6),
                              Image.network(
                                'https://static.vecteezy.com/system/resources/previews/005/365/006/original/cable-car-inspiration-illustration-logo-on-the-mountain-vector.jpg',
                                width: 30,
                                // width: MediaQuery.of(context).size.width / 12,
                                alignment: Alignment.bottomCenter,
                                height: 30,
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                'Cable Car',
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
                              builder: (ctx) => const TopUp(),
                            ),
                          );
                        },
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width / 4 - 30,
                          child: Column(
                            children: [
                              const SizedBox(height: 6),
                              Image.network(
                                'https://img2.pngdownload.id/20180515/lq/kisspng-computer-icons-drop-down-list-menu-arrow-computer-5afb9d32948639.0346789315264392186084.jpg',
                                width: 30,
                                // width: MediaQuery.of(context).size.width / 12,
                                alignment: Alignment.bottomCenter,
                                height: 30,
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                'View More',
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
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            Padding(
              // padding: const EdgeInsets.all(12.0),
              padding: const EdgeInsets.only(left: 25),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (ctx) => const SendMoney(),
                        ),
                      );
                    },
                    child: Container(
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
                          Image.network(
                            'https://w7.pngwing.com/pngs/748/480/png-transparent-electronic-funds-transfer-bank-money-finance-financial-transaction-bank-game-service-payment.png',
                            width: MediaQuery.of(context).size.width,
                            alignment: Alignment.bottomCenter,
                            height: 60,
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'Send Money',
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
                  const SizedBox(width: 40),
                  GestureDetector(
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (ctx) => const BankTransfer(),
                      ),
                    ),
                    child: Container(
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
                          Image.network(
                            'https://w7.pngwing.com/pngs/825/870/png-transparent-computer-icons-bank-payment-money-wire-transfer-bank-transfer.png',
                            // width: 60,
                            width: MediaQuery.of(context).size.width,

                            alignment: Alignment.bottomCenter,
                            height: 60,
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'Bank Transfer',
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
                ],
              ),
            ),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.only(bottom: 0, top: 10, left: 20),
              child: Container(
                //padding: EdgeInsets.all(10),
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Featured Services',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            // Container(
            //   width: MediaQuery.of(context).size.width,
            //   padding: const EdgeInsets.all(10),
            //   decoration: BoxDecoration(
            //     color: Colors.white,
            //     borderRadius: BorderRadius.circular(16.0),
            //   ),
            //   // width: MediaQuery.of(context).size.width / 2.5,
            //   //height: 100,
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.start,
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       Column(
            //         children: [
            //           Image.network(
            //             'https://st2.depositphotos.com/2402073/12398/v/950/depositphotos_123986538-stock-illustration-smart-watch-isolated-on-white.jpg',
            //             width: 30,
            //             alignment: Alignment.bottomCenter,
            //             height: 30,
            //           ),
            //           const SizedBox(height: 10),
            //           const Text(
            //             'Topup',
            //             style: TextStyle(
            //               fontSize: 16,
            //               fontWeight: FontWeight.w500,
            //             ),
            //             textAlign: TextAlign.center,
            //           ),
            //           const SizedBox(height: 20),
            //           Image.network(
            //             'https://img.favpng.com/9/20/1/online-banking-logo-organization-clip-art-png-favpng-U3WiXXaBFvJuipxBfZ9camEjB.jpg',
            //             width: 30,
            //             alignment: Alignment.bottomCenter,
            //             height: 30,
            //           ),
            //           const SizedBox(height: 10),
            //           const Text(
            //             'LinkBank',
            //             style: TextStyle(
            //               fontSize: 16,
            //               fontWeight: FontWeight.w500,
            //             ),
            //             textAlign: TextAlign.center,
            //           ),
            //         ],
            //       ),
            //       const SizedBox(width: 10),
            //       Column(
            //         children: [
            //           Image.network(
            //             'https://i.pinimg.com/originals/72/3d/0a/723d0af616b1fe7d5c7e56a3532be3cd.png',
            //             width: 30,
            //             alignment: Alignment.bottomCenter,
            //             height: 30,
            //           ),
            //           const SizedBox(height: 10),
            //           const Text(
            //             'Challenges',
            //             style: TextStyle(
            //               fontSize: 16,
            //               fontWeight: FontWeight.w500,
            //             ),
            //             textAlign: TextAlign.center,
            //           ),
            //           const SizedBox(height: 20),
            //           Image.network(
            //             'https://play-lh.googleusercontent.com/l2NwpHebHN7ZwsyqxMhe3Ke75VC-vN8o5Xyz9cVkE3ES-o_lviOiFStNrCeo_BUtsLo_=w600-h300-pc0xffffff-pd',
            //             width: 30,
            //             alignment: Alignment.bottomCenter,
            //             height: 30,
            //           ),
            //           const SizedBox(height: 10),
            //           const Text(
            //             'Connect IPS',
            //             style: TextStyle(
            //               fontSize: 16,
            //               fontWeight: FontWeight.w500,
            //             ),
            //             textAlign: TextAlign.center,
            //           ),
            //         ],
            //       ),
            //       const SizedBox(width: 10),
            //       Column(
            //         children: [
            //           Image.network(
            //             'https://i.pinimg.com/originals/dd/64/da/dd64da585bc57cb05e5fd4d8ce873f57.png',
            //             width: 30,
            //             alignment: Alignment.bottomCenter,
            //             height: 30,
            //           ),
            //           const SizedBox(height: 10),
            //           const Text(
            //             'Bluebook',
            //             style: TextStyle(
            //               fontSize: 16,
            //               fontWeight: FontWeight.w500,
            //             ),
            //             textAlign: TextAlign.center,
            //           ),
            //           const SizedBox(height: 20),
            //           Image.network(
            //             'https://e7.pngegg.com/pngimages/503/7/png-clipart-airplane-logo-flight-attendant-air-travel-airplane-aviation-avion-text-logo.png',
            //             width: 30,
            //             alignment: Alignment.bottomCenter,
            //             height: 30,
            //           ),
            //           const SizedBox(height: 10),
            //           const Text(
            //             'Cooperative',
            //             style: TextStyle(
            //               fontSize: 16,
            //               fontWeight: FontWeight.w500,
            //             ),
            //             textAlign: TextAlign.center,
            //           ),
            //         ],
            //       ),
            //       const SizedBox(width: 10),
            //       Column(
            //         children: [
            //           Image.network(
            //             'https://img.freepik.com/premium-vector/quiz-logo_2728-12.jpg?w=2000',
            //             width: 30,
            //             alignment: Alignment.bottomCenter,
            //             height: 30,
            //           ),
            //           const SizedBox(height: 10),
            //           const Text(
            //             'Khalti Quiz',
            //             style: TextStyle(
            //               fontSize: 16,
            //               fontWeight: FontWeight.w500,
            //             ),
            //             textAlign: TextAlign.center,
            //           ),
            //           const SizedBox(height: 20),
            //           Image.network(
            //             'https://img.freepik.com/premium-vector/colorful-movie-logo_18099-26.jpg',
            //             width: 30,
            //             alignment: Alignment.bottomCenter,
            //             height: 30,
            //           ),
            //           const SizedBox(height: 10),
            //           const Text(
            //             'Pravesika',
            //             style: TextStyle(
            //               fontSize: 16,
            //               fontWeight: FontWeight.w500,
            //             ),
            //             textAlign: TextAlign.center,
            //           ),
            //         ],
            //       ),
            //     ],
            //   ),
            // ),
            Container(
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
                              builder: (ctx) => const TopUp(),
                            ),
                          );
                        },
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width / 4 - 30,
                          // height: 100,
                          child: Column(
                            children: [
                              const SizedBox(height: 6),
                              Image.network(
                                'https://static.thenounproject.com/png/3593515-200.png',
                                width: 30,
                                // width: MediaQuery.of(context).size.width / 12,
                                alignment: Alignment.bottomCenter,
                                height: 30,
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                'Topup',
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
                              builder: (ctx) => const TopUp(),
                            ),
                          );
                        },
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width / 4 - 30,
                          child: Column(
                            children: [
                              const SizedBox(height: 6),
                              Image.network(
                                'https://i.pinimg.com/originals/72/3d/0a/723d0af616b1fe7d5c7e56a3532be3cd.png',

                                width: 30,
                                // width: MediaQuery.of(context).size.width / 12,
                                alignment: Alignment.bottomCenter,
                                height: 30,
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                'Challenges',
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
                              builder: (ctx) => const TopUp(),
                            ),
                          );
                        },
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width / 4 - 30,
                          child: Column(
                            children: [
                              const SizedBox(height: 6),
                              Image.network(
                                'https://i.pinimg.com/originals/dd/64/da/dd64da585bc57cb05e5fd4d8ce873f57.png',

                                width: 30,
                                // width: MediaQuery.of(context).size.width / 12,
                                alignment: Alignment.bottomCenter,
                                height: 30,
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                'Bluebook',
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
                              builder: (ctx) => const TopUp(),
                            ),
                          );
                        },
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width / 4 - 30,
                          child: Column(
                            children: [
                              const SizedBox(height: 6),
                              Image.network(
                                'https://img.freepik.com/premium-vector/quiz-logo_2728-12.jpg?w=2000',

                                width: 30,
                                // width: MediaQuery.of(context).size.width / 12,
                                alignment: Alignment.bottomCenter,
                                height: 30,
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                'Quiz',
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
                    ],
                  ),
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx) => const TopUp(),
                            ),
                          );
                        },
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width / 4 - 30,
                          // height: 100,
                          child: Column(
                            children: [
                              const SizedBox(height: 6),
                              Image.network(
                                'https://img.favpng.com/9/20/1/online-banking-logo-organization-clip-art-png-favpng-U3WiXXaBFvJuipxBfZ9camEjB.jpg',
                                width: 30,
                                // width: MediaQuery.of(context).size.width / 12,
                                alignment: Alignment.bottomCenter,
                                height: 30,
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                'LinkBank',
                                style: TextStyle(
                                  fontSize: 14,
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
                              builder: (ctx) => const TopUp(),
                            ),
                          );
                        },
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width / 4 - 30,
                          child: Column(
                            children: [
                              const SizedBox(height: 6),
                              Image.network(
                                'https://play-lh.googleusercontent.com/l2NwpHebHN7ZwsyqxMhe3Ke75VC-vN8o5Xyz9cVkE3ES-o_lviOiFStNrCeo_BUtsLo_=w600-h300-pc0xffffff-pd',
                                width: 30,
                                // width: MediaQuery.of(context).size.width / 12,
                                alignment: Alignment.bottomCenter,
                                height: 30,
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                'Connect IPS',
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
                              builder: (ctx) => const TopUp(),
                            ),
                          );
                        },
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width / 4 - 30,
                          child: Column(
                            children: [
                              const SizedBox(height: 6),
                              Image.network(
                                'https://e7.pngegg.com/pngimages/503/7/png-clipart-airplane-logo-flight-attendant-air-travel-airplane-aviation-avion-text-logo.png',
                                width: 30,
                                // width: MediaQuery.of(context).size.width / 12,
                                // alignment: Alignment.bottomCenter,
                                alignment: Alignment.center,
                                height: 30,
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                'Cooperative',
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
                              builder: (ctx) => const TopUp(),
                            ),
                          );
                        },
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width / 4 - 30,
                          child: Column(
                            children: [
                              const SizedBox(height: 6),
                              Image.network(
                                'https://yt3.googleusercontent.com/mIEH7-7-xsulAKJQX2oCEOHr_uhTQUD8Jijm1xFFIizcKHpC_cVC-yIwTer1LA6SqoSL8Rz8ng=s900-c-k-c0x00ffffff-no-rj',
                                // 'https://img.freepik.com/premium-vector/colorful-movie-logo_18099-26.jpg',
                                width: 30,
                                // width: MediaQuery.of(context).size.width / 12,
                                alignment: Alignment.bottomCenter,
                                height: 30,
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                'Pravesika',
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
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.only(bottom: 0, top: 10, left: 20),
              child: Container(
                //padding: EdgeInsets.all(10),
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Other Services',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16.0),
              ),
              // Add a SizedBox to provide width for the ListView
              child: SizedBox(
                height: 60,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Image.network(
                              'https://img.freepik.com/free-icon/graduation-student-black-cap_318-56675.jpg',
                              width: 30,
                              alignment: Alignment.bottomCenter,
                              height: 30,
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'Education',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        const SizedBox(width: 30),
                        Column(
                          children: [
                            Image.network(
                              'https://st2.depositphotos.com/4362315/7819/v/950/depositphotos_78194060-stock-illustration-medical-logo-health-care-center.jpg',
                              width: 30,
                              alignment: Alignment.bottomCenter,
                              height: 30,
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'Health',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        const SizedBox(width: 30),
                        Column(
                          children: [
                            Image.network(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRXAwcScUrGK-C7ApR9uxywSNMgd_dPqVtY0cD6YCVfGONSwsKwr1EdKzt4JsjUMGAFsC8&usqp=CAU',
                              width: 30,
                              alignment: Alignment.bottomCenter,
                              height: 30,
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'Daily Essentials',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        const SizedBox(width: 30),
                        Column(
                          children: [
                            Image.network(
                              'https://w7.pngwing.com/pngs/793/8/png-transparent-one-club-nightclub-mecca-club-prague-bar-nightlife-prague-emblem-label-logo.png',
                              width: 30,
                              alignment: Alignment.bottomCenter,
                              height: 30,
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'Club & Membership',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        const SizedBox(width: 30),
                        Column(
                          children: [
                            Image.network(
                              'https://cdn.freebiesupply.com/logos/large/2x/vendor-logo-png-transparent.png',
                              width: 30,
                              alignment: Alignment.bottomCenter,
                              height: 30,
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'Vendor',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        const SizedBox(width: 30),
                        Column(
                          children: [
                            Image.network(
                              'https://image.similarpng.com/very-thumbnail/2021/08/Travel-agency-logo-design-template-on-transparent-background-PNG.png',
                              width: 30,
                              alignment: Alignment.bottomCenter,
                              height: 30,
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'Travel & Tourism',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        const SizedBox(width: 30),
                        Column(
                          children: [
                            Image.network(
                              'https://cdn3.vectorstock.com/i/1000x1000/09/17/electricity-logo-circle-electric-logo-icon-vector-27370917.jpg',
                              width: 30,
                              alignment: Alignment.bottomCenter,
                              height: 30,
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'Social Cause',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 40),
            SizedBox(
              width: MediaQuery.of(context).size.width / 1.1,
              // height: 1200,
              child: ImageSlideshow(
                indicatorColor: Colors.blue,
                onPageChanged: (value) {
                  debugPrint('Page changed: $value');
                },
                autoPlayInterval: 3000,
                isLoop: true,
                children: [
                  Image.network(
                    // 'https://w0.peakpx.com/wallpaper/586/759/HD-wallpaper-sasuke-rinnegan-anime-eye-galaxy-iphone-naruto-pixel-purple-susuke-uchiha.jpg',
                    //'https://yt3.googleusercontent.com/mIEH7-7-xsulAKJQX2oCEOHr_uhTQUD8Jijm1xFFIizcKHpC_cVC-yIwTer1LA6SqoSL8Rz8ng=s900-c-k-c0x00ffffff-no-rj',
                    'https://w0.peakpx.com/wallpaper/258/698/HD-wallpaper-kid-goku-animeart-animeedit-anime-bulma-dbz-dragonballz-goku-naruto-obito-vegeta-thumbnail.jpg',
                    fit: BoxFit.cover,
                    // width: 120,
                  ),
                  Image.network(
                    'https://e0.pxfuel.com/wallpapers/1022/964/desktop-wallpaper-sharingan-red-sharingan-thumbnail.jpg',
                    fit: BoxFit.cover,
                  ),
                  Image.network(
                    'https://cdn.dribbble.com/users/7049949/screenshots/16300841/akatsuki_logo.png',
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(bottom: 0, top: 10, left: 20),
              child: Container(
                //padding: EdgeInsets.all(10),
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Insurance Services',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16.0),
              ),
              // Add a SizedBox to provide width for the ListView
              child: SizedBox(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              padding: const EdgeInsets.all(8.0),
                              child: Image.network(
                                'https://hei.com.np/files/2022/08/Logo-for-HEI-2-e1659614032149.png',
                                width: 30,
                                alignment: Alignment.bottomCenter,
                                height: 30,
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'Bike/Car \n Insurance',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        const SizedBox(width: 30),
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              padding: const EdgeInsets.all(8.0),
                              child: Image.network(
                                'https://w7.pngwing.com/pngs/472/510/png-transparent-government-of-nepal-embassy-of-nepal-in-washington-d-c-local-government-poultry-farming-in-nepal-food-christmas-decoration-flower.png',
                                width: 30,
                                alignment: Alignment.bottomCenter,
                                height: 30,
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'DOFE Insurance',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        const SizedBox(width: 30),
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              padding: const EdgeInsets.all(8.0),
                              child: Image.network(
                                'https://english.insurancekhabar.com/wp-content/uploads/2021/08/reliablelogo-1024x551-1024x551-1.png',
                                width: 30,
                                alignment: Alignment.bottomCenter,
                                height: 30,
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'Reliable Surakshit \n Jeevan Beema',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        const SizedBox(width: 30),
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              padding: const EdgeInsets.all(8.0),
                              child: Image.network(
                                'https://e7.pngegg.com/pngimages/49/483/png-clipart-planet-earth-with-airplane-globe-airplane-flight-atkamba-airport-aircraft-global-miscellaneous-service.png',
                                width: 30,
                                alignment: Alignment.bottomCenter,
                                height: 30,
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'DOFE Welfare',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(bottom: 0, top: 10, left: 20),
              child: Container(
                //padding: EdgeInsets.all(10),
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Registration & Enrollments',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16.0),
              ),
              // Add a SizedBox to provide width for the ListView
              child: SizedBox(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              padding: const EdgeInsets.all(8.0),
                              child: Image.network(
                                'https://i.pinimg.com/1200x/89/2a/e0/892ae02acba8f34d0f4361c4bd334422.jpg',
                                width: 30,
                                alignment: Alignment.bottomCenter,
                                height: 30,
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'Miss Universe \n Nepal 2023',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        const SizedBox(width: 30),
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              padding: const EdgeInsets.all(8.0),
                              child: Image.network(
                                'https://www.nextmodelsnepal.com/assets/uploads/2019/01/49835388_228097678066424_6030624375575674880_n.png',
                                width: 30,
                                alignment: Alignment.bottomCenter,
                                height: 30,
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'Model Hunt Nepal \n 2023',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        const SizedBox(width: 30),
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              padding: const EdgeInsets.all(8.0),
                              child: Image.network(
                                'https://nationalyouthcouncil.org/wp-content/uploads/2022/03/Youth-Entrepreneurship.png',
                                width: 30,
                                alignment: Alignment.bottomCenter,
                                height: 30,
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'Youth \n Entrepreneurship',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        const SizedBox(width: 30),
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              padding: const EdgeInsets.all(8.0),
                              child: Image.network(
                                'https://www.kiec.edu.np/wp-content/uploads/2019/09/GLAMOUR-NEPAL-LOGO1.png',
                                width: 30,
                                alignment: Alignment.bottomCenter,
                                height: 30,
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'Glam Nepal  \n International',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        const SizedBox(width: 30),
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              padding: const EdgeInsets.all(8.0),
                              child: Image.network(
                                'https://e7.pngegg.com/pngimages/319/962/png-clipart-logo-face-girl-salon-people-head-thumbnail.png',
                                width: 30,
                                alignment: Alignment.bottomCenter,
                                height: 30,
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'The Face Volume \n IV',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        const SizedBox(width: 30),
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              padding: const EdgeInsets.all(8.0),
                              child: Image.network(
                                'https://www.greatergbc.org/hubfs/Urban%20Hub%20logo_280x280.png',
                                width: 30,
                                alignment: Alignment.bottomCenter,
                                height: 30,
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'NAME Urban Hub',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(bottom: 0, top: 10, left: 20),
              child: Container(
                //padding: EdgeInsets.all(10),
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Popular Government Services',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16.0),
              ),
              // Add a SizedBox to provide width for the ListView
              child: SizedBox(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              padding: const EdgeInsets.all(8.0),
                              child: Image.network(
                                'https://mypay.com.np/wp-content/uploads/2023/06/Traffic-police.jpg',
                                width: 30,
                                alignment: Alignment.bottomCenter,
                                height: 30,
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'Traffic Police Fine \n Payment',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        const SizedBox(width: 30),
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              padding: const EdgeInsets.all(8.0),
                              child: Image.network(
                                'https://w7.pngwing.com/pngs/472/510/png-transparent-government-of-nepal-embassy-of-nepal-in-washington-d-c-local-government-poultry-farming-in-nepal-food-christmas-decoration-flower.png',
                                width: 30,
                                alignment: Alignment.bottomCenter,
                                height: 30,
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'EPS Korea \n Management Fee',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        const SizedBox(width: 30),
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              padding: const EdgeInsets.all(8.0),
                              child: Image.network(
                                'https://w7.pngwing.com/pngs/472/510/png-transparent-government-of-nepal-embassy-of-nepal-in-washington-d-c-local-government-poultry-farming-in-nepal-food-christmas-decoration-flower.png',
                                width: 30,
                                alignment: Alignment.bottomCenter,
                                height: 30,
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'Bluebook Renew',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        const SizedBox(width: 30),
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              padding: const EdgeInsets.all(8.0),
                              child: Image.network(
                                'https://w7.pngwing.com/pngs/472/510/png-transparent-government-of-nepal-embassy-of-nepal-in-washington-d-c-local-government-poultry-farming-in-nepal-food-christmas-decoration-flower.png',
                                width: 30,
                                alignment: Alignment.bottomCenter,
                                height: 30,
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'No Objection\n Letter',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        const SizedBox(width: 30),
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              padding: const EdgeInsets.all(8.0),
                              child: Image.network(
                                'https://w7.pngwing.com/pngs/472/510/png-transparent-government-of-nepal-embassy-of-nepal-in-washington-d-c-local-government-poultry-farming-in-nepal-food-christmas-decoration-flower.png',
                                width: 30,
                                alignment: Alignment.bottomCenter,
                                height: 30,
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'IRD',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        const SizedBox(width: 30),
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              padding: const EdgeInsets.all(8.0),
                              child: Image.network(
                                'https://w7.pngwing.com/pngs/472/510/png-transparent-government-of-nepal-embassy-of-nepal-in-washington-d-c-local-government-poultry-farming-in-nepal-food-christmas-decoration-flower.png',
                                width: 30,
                                alignment: Alignment.bottomCenter,
                                height: 30,
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'Government Revenue',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(bottom: 0, top: 10, left: 20),
              child: Container(
                //padding: EdgeInsets.all(10),
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Popular Services',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16.0),
              ),
              // Add a SizedBox to provide width for the ListView
              child: SizedBox(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              padding: const EdgeInsets.all(8.0),
                              child: Image.network(
                                'https://e7.pngegg.com/pngimages/702/91/png-clipart-idp-education-logo-product-design-brand-international-english-language-testing-system-deakin-university-australia-logo-text-logo.png',
                                width: 30,
                                alignment: Alignment.bottomCenter,
                                height: 30,
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'IDP IELTS',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        const SizedBox(width: 30),
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              padding: const EdgeInsets.all(8.0),
                              child: Image.network(
                                'https://www.nmcth.edu/source/images/nmc-logo-default.png',
                                width: 30,
                                alignment: Alignment.bottomCenter,
                                height: 30,
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'NMC - EXAM',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        const SizedBox(width: 30),
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              padding: const EdgeInsets.all(8.0),
                              child: Image.network(
                                'https://www.nmcth.edu/source/images/nmc-logo-default.png',
                                width: 30,
                                alignment: Alignment.bottomCenter,
                                height: 30,
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'NMC - \n Registration',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        const SizedBox(width: 30),
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              padding: const EdgeInsets.all(8.0),
                              child: Image.network(
                                'https://kathmandu.wordcamp.org/2023/files/2023/04/cropped-WordCamp-Kathmandu-2023-Official-Logo-1.png',
                                width: 30,
                                alignment: Alignment.bottomCenter,
                                height: 30,
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'Worldcamp\n Kathmandu 2023',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        const SizedBox(width: 30),
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              padding: const EdgeInsets.all(8.0),
                              child: Image.network(
                                'https://i.pinimg.com/736x/3f/3b/08/3f3b08338a958e5e6dbf706672f4a40f.jpg',
                                width: 30,
                                alignment: Alignment.bottomCenter,
                                height: 30,
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'ULTIMA Dynamite',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        const SizedBox(width: 30),
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              padding: const EdgeInsets.all(8.0),
                              child: Image.network(
                                'https://golchhagroup.com.np/wp-content/uploads/2022/09/Hulas-Fin-Serve-Logo-1024x720.jpg',
                                width: 30,
                                alignment: Alignment.bottomCenter,
                                height: 30,
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'Hulas Finserve',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        const SizedBox(width: 30),
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              padding: const EdgeInsets.all(8.0),
                              child: Image.network(
                                'https://e7.pngegg.com/pngimages/868/396/png-clipart-aerial-lift-tour-blue-winter.png',
                                width: 30,
                                alignment: Alignment.bottomCenter,
                                height: 30,
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'Manakamna Cable \n Car',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(bottom: 0, top: 10, left: 20),
              child: Container(
                //padding: EdgeInsets.all(10),
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Send Money to Vendor',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16.0),
              ),
              // Add a SizedBox to provide width for the ListView
              child: SizedBox(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              padding: const EdgeInsets.all(8.0),
                              child: Image.network(
                                'https://sparrowsms-app-swift.s3.ap-south-1.amazonaws.com/static/img/logo.png',
                                width: 30,
                                alignment: Alignment.bottomCenter,
                                height: 30,
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'Sparrow SMS',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        const SizedBox(width: 30),
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              padding: const EdgeInsets.all(8.0),
                              child: Image.network(
                                'https://cdn.myportfolio.com/a381af68-4dbc-494c-8b2a-3505ddfd430c/f281c3fa-d7f4-4390-9008-828417665796_rw_1920.png?h=22962ae4b14e35c5e88412646df9d0fd',
                                width: 30,
                                alignment: Alignment.bottomCenter,
                                height: 30,
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'Veda',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        const SizedBox(width: 30),
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              padding: const EdgeInsets.all(8.0),
                              child: Image.network(
                                'https://images-platform.99static.com//dqUri0smZi1nS-vwbHxvT5_vuMU=/0x0:1000x1000/fit-in/500x500/99designs-contests-attachments/99/99320/attachment_99320706',
                                width: 30,
                                alignment: Alignment.bottomCenter,
                                height: 30,
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'All Star IT Solution',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        const SizedBox(width: 30),
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              padding: const EdgeInsets.all(8.0),
                              child: Image.network(
                                'https://kathmandu.wordcamp.org/2023/files/2023/04/cropped-WordCamp-Kathmandu-2023-Official-Logo-1.png',
                                width: 30,
                                alignment: Alignment.bottomCenter,
                                height: 30,
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'Mithlesh Mobile',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        const SizedBox(width: 30),
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              padding: const EdgeInsets.all(8.0),
                              child: Image.network(
                                'https://media.licdn.com/dms/image/C5603AQGziupAxGdH4g/profile-displayphoto-shrink_800_800/0/1655228521452?e=2147483647&v=beta&t=_oEcz7vvwg4uy7dMBQpoq55N3MchTIAHhrnD798QTOA',
                                width: 30,
                                alignment: Alignment.bottomCenter,
                                height: 30,
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'SMM Nepal',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        const SizedBox(width: 30),
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              padding: const EdgeInsets.all(8.0),
                              child: Image.network(
                                'https://img.freepik.com/free-vector/professional-rr-logotype-template_23-2149229978.jpg',
                                width: 30,
                                alignment: Alignment.bottomCenter,
                                height: 30,
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'RR Mobile',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        const SizedBox(width: 30),
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              padding: const EdgeInsets.all(8.0),
                              child: Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRscAJll3zD3_88OaSaxlJFRTq8UqFAJn2Z1FskVLaLDSsW2tKQRE_-9lquE01Gki4vDug&usqp=CAU',
                                width: 30,
                                alignment: Alignment.bottomCenter,
                                height: 30,
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'IT Karkhana',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        // backgroundColor: Color(Colors.pink),
        items: const [
          BottomNavigationBarItem(
            backgroundColor: Color.fromARGB(11, 4, 220, 220),
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color.fromARGB(10, 16, 4, 238),
            icon: Icon(Icons.account_balance_wallet),
            label: 'Account',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color.fromARGB(10, 16, 4, 238),
            icon: Icon(Icons.send),
            label: 'Transfers',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.payment),
            label: 'Bills',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}

class TransactionCard extends StatelessWidget {
  final String title;
  final String recipient;
  final String amount;
  final String date;

  const TransactionCard({
    required this.title,
    required this.recipient,
    required this.amount,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(color: Colors.grey),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8.0),
          Text('Recipient: $recipient'),
          const SizedBox(height: 4.0),
          Text('Amount: $amount'),
          const SizedBox(height: 4.0),
          Text('Date: $date'),
        ],
      ),
    );
  }
}
