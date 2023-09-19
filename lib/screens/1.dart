import 'package:flutter/material.dart';
import 'package:wallet/screens/internet.dart';
import 'package:wallet/screens/topup.dart';

class Practise extends StatelessWidget {
  const Practise({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        color: Color(0xfff3f6ff),
        // color: Colors.black,
      ),
      child: Row(
        children: [
          const SizedBox(height: 6),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  // color: Colors.yellow,
                  borderRadius: BorderRadius.circular(16.0),
                ),
                // width: MediaQuery.of(context).size.width / 2.5,
                //height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        const SizedBox(height: 6),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (ctx) => const TopUp(),
                              ),
                            );
                          },
                          child: Image.network(
                            'https://static.thenounproject.com/png/3593515-200.png',
                            width: 30,
                            // width: MediaQuery.of(context).size.width / 12,
                            alignment: Alignment.bottomCenter,
                            height: 30,
                          ),
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
                        const SizedBox(height: 35),
                        GestureDetector(
                          onTap: () {},
                          child: Image.network(
                            'https://static.vecteezy.com/system/resources/previews/007/688/855/original/tv-logo-free-vector.jpg',
                            width: 30,
                            alignment: Alignment.bottomCenter,
                            height: 30,
                          ),
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
                        const SizedBox(height: 35),
                        Image.network(
                          'https://cdn2.vectorstock.com/i/1000x1000/01/16/graduation-hat-icon-simple-college-diploma-vector-39330116.jpg',
                          width: 30,
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
                        const SizedBox(height: 35),
                        Image.network(
                          'https://img.freepik.com/premium-vector/logo-vector-minimalist-design-circle-spin-colorful-concept-minimalism-technology_790567-360.jpg?w=2000',
                          width: 30,
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
                    const SizedBox(width: 20),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (ctx) => InternettScreen(),
                          ),
                        );
                      },
                      child: Column(
                        children: [
                          Image.network(
                            'https://static.vecteezy.com/system/resources/previews/010/518/697/original/wireless-router-repeater-icon-for-graphic-design-logo-web-site-social-media-mobile-app-ui-illustration-vector.jpg',
                            width: 30,
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
                          const SizedBox(height: 35),
                          Image.network(
                            'https://cdn4.vectorstock.com/i/1000x1000/76/28/c-water-drop-logo-vector-28947628.jpg',
                            width: 30,
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
                          const SizedBox(height: 35),
                          Image.network(
                            'https://freerangestock.com/sample/118516/black-umbrella-symbol.jpg',
                            width: 30,
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
                          const SizedBox(height: 35),
                          Image.network(
                            'https://t4.ftcdn.net/jpg/03/96/55/29/360_F_396552956_VAZMfge1XgKaCY3UWOglYHdk7UNaPPck.jpg',
                            width: 30,
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
                    const SizedBox(width: 20),
                    Column(
                      children: [
                        Image.network(
                          'https://clipart-library.com/image_gallery2/Telephone.png',
                          width: 30,
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
                        const SizedBox(height: 35),
                        Image.network(
                          'https://e7.pngegg.com/pngimages/503/7/png-clipart-airplane-logo-flight-attendant-air-travel-airplane-aviation-avion-text-logo.png',
                          width: 30,
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
                        const SizedBox(height: 35),
                        Image.network(
                          'https://cdn.sanity.io/images/kts928pd/production/4d57e064de16f884d2279fe189f5f98c33ce6014-731x731.jpg',
                          width: 30,
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
                        const SizedBox(height: 35),
                        Image.network(
                          'https://static.vecteezy.com/system/resources/previews/005/365/006/original/cable-car-inspiration-illustration-logo-on-the-mountain-vector.jpg',
                          width: 30,
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
                    const SizedBox(width: 20),
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
                          'Electricity',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 35),
                        Image.network(
                          'https://img.freepik.com/premium-vector/colorful-movie-logo_18099-26.jpg',
                          width: 30,
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
                        const SizedBox(height: 35),
                        Image.network(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUwINjrDDyMxX_kx4cO6gIDQPj9LFtnGjq7tQ-UvTCTCHVkaEcu9LpEqgUaFRc_R4EnuM&usqp=CAU',
                          width: 30,
                          alignment: Alignment.bottomCenter,
                          height: 30,
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Government',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 35),
                        Image.network(
                          'https://img2.pngdownload.id/20180515/lq/kisspng-computer-icons-drop-down-list-menu-arrow-computer-5afb9d32948639.0346789315264392186084.jpg',
                          width: 30,
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
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
