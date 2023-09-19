import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class TabBarExample3 extends StatefulWidget {
  const TabBarExample3({super.key});

  @override
  TabBarExampleState createState() => TabBarExampleState();
}

class TabBarExampleState extends State<TabBarExample3> {
  List<dynamic> jsonData = [];

  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    loadDataFromJson();
  }

  Future<void> loadDataFromJson() async {
    setState(() {
      isLoading = true;
    });
    String jsonString = await rootBundle.loadString('assets/nps_data.json');
    setState(() {
      jsonData = json.decode(jsonString)['Data'];
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const CircularProgressIndicator()
        : DefaultTabController(
            initialIndex: 0,
            length: 4,
            child: Scaffold(
              appBar: AppBar(
                title: const Text('TabBar Sample'),
                backgroundColor: Colors.pink,
              ),
              body: Column(
                children: [
                  Container(
                    color: Colors.green,
                    child: const Align(
                      alignment: Alignment.centerLeft,
                      child: TabBar(
                        isScrollable: true,
                        tabs: [
                          Tab(
                            child: Text(
                              'MBanking',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Tab(
                            child: Text(
                              'EBanking',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Tab(
                            child: Text(
                              'Wallet',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Tab(
                            child: Text(
                              'Card',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: TabBarView(
                      children: <Widget>[
                        _buildListViewMBanking(jsonData),
                        _buildListViewEBanking(jsonData),
                        _buildListViewGateway(jsonData),
                        _buildListViewCard(jsonData),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
  }

  Widget _buildListViewCard(List<dynamic> dataList) {
    if (dataList.isEmpty) {
      return const Center(
        child: Text('No data'),
      );
    }
    List<dynamic> dataListCard =
        dataList.where((x) => x['BankType'] == "checkoutcard").toList();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        itemCount: dataListCard.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {},
            child: Column(
              children: [
                dataListCard[index]['LogoUrl'] != null
                    ? Image.network(
                        dataListCard[index]['LogoUrl'],
                        height: 50,
                      )
                    : Container(),
                const SizedBox(height: 10),
                Text(
                  dataListCard[index]['InstitutionName'] ?? '',
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          );
        },
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 1.3,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
        ),
      ),
    );
  }

  Widget _buildListViewGateway(List<dynamic> dataList) {
    if (dataList.isEmpty) {
      return const Center(
        child: Text('No data'),
      );
    }
    List<dynamic> dataListCard =
        dataList.where((x) => x['BankType'] == "CheckoutGateway").toList();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        itemCount: dataListCard.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {},
            child: Column(
              children: [
                dataListCard[index]['LogoUrl'] != null
                    ? Image.network(
                        dataListCard[index]['LogoUrl'],
                        height: 50,
                      )
                    : Container(),
                const SizedBox(height: 10),
                Text(
                  dataListCard[index]['InstitutionName'] ?? '',
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          );
        },
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 1.3,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
        ),
      ),
    );
  }

  Widget _buildListViewEBanking(List<dynamic> dataList) {
    if (dataList.isEmpty) {
      return const Center(
        child: Text('No data'),
      );
    }
    List<dynamic> dataListCard =
        dataList.where((x) => x['BankType'] == "EBanking").toList();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        itemCount: dataListCard.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {},
            child: Column(
              children: [
                dataListCard[index]['LogoUrl'] != null
                    ? Image.network(
                        dataListCard[index]['LogoUrl'],
                        height: 50,
                      )
                    : Container(),
                const SizedBox(height: 10),
                Text(
                  dataListCard[index]['InstitutionName'] ?? '',
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          );
        },
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 1.3,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
        ),
      ),
    );
  }

  Widget _buildListViewMBanking(List<dynamic> dataList) {
    if (dataList.isEmpty) {
      return const Center(
        child: Text('No data'),
      );
    }
    List<dynamic> dataListCard =
        dataList.where((x) => x['BankType'] == "MBanking").toList();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        itemCount: dataListCard.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {},
            child: Column(
              children: [
                dataListCard[index]['LogoUrl'] != null
                    ? Image.network(
                        dataListCard[index]['LogoUrl'],
                        height: 50,
                      )
                    : Container(),
                const SizedBox(height: 10),
                Text(
                  dataListCard[index]['InstitutionName'] ?? '',
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          );
        },
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 1.3,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
        ),
      ),
    );
  }
}
