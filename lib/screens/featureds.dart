import 'package:flutter/material.dart';
import 'package:wallet/screens/topup.dart';
import 'package:wallet/screens/wallet.dart';

class FeaturedServices extends StatelessWidget {
  const FeaturedServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (ctx) => const BankingWalletHome(),
                ),
              );
            },
            icon: const Icon(
              Icons.apple,
            ),
          )
        ],
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: Color(0xfff3f6ff),
        ),
        child: Column(
          children: [
            const SizedBox(height: 20),
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
                                'Khalti Quiz',
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
          ],
        ),
      ),
    );
  }
}
