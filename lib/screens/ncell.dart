import 'package:flutter/material.dart';
import 'package:wallet/models/catalog.dart';
import 'package:wallet/screens/2.dart';

class NcellScreen extends StatefulWidget {
  const NcellScreen({super.key});

  @override
  State<NcellScreen> createState() => _TabBarExampleState();
}

class _TabBarExampleState extends State<NcellScreen>
    with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Ncell Product',
          style: TextStyle(),
        ),
        backgroundColor: const Color(0xFF41a124),
        bottom: TabBar(
          controller: _tabController,
          tabs: const <Widget>[
            Tab(
              text: 'All Packs',
            ),
            Tab(
              text: 'Voice Pack',
            ),
            Tab(
              text: 'Data Pack',
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Center(
            // child: ListView.builder(
            //   itemCount: 10,
            //   itemBuilder: (ctx, index) => const Text(
            //     "It's cloudy here",
            //     style: TextStyle(
            //       fontSize: 20,
            //     ),
            //   ),
            // ),
            child: ListView.builder(
              itemCount: CatalogModel.items.length,
              itemBuilder: (context, index) =>
                  ItemWidget(item: CatalogModel.items[index]),
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.all(12.0),
          //   child: Column(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     mainAxisAlignment: MainAxisAlignment.start,
          //     children: [
          //       Image.network(
          //         'https://play-lh.googleusercontent.com/E9_aaJYZG3UgwleHbUsC0CCVNyR8ikt8AdbFzYo8GVbI7yCJZZEPW4pBh7zaB2wLe07N',
          //         width: 60,
          //       ),
          //       const SizedBox(width: 10),
          //       const Text(
          //         'All Ncell Pack',
          //         style: TextStyle(
          //           fontSize: 20,
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          const Center(
            child: Text("It's rainy here"),
          ),
          const Center(
            child: Text("It's sunny here"),
          ),
        ],
      ),
    );
  }
}

ItemWidget({required Item item}) {}

// import 'package:flutter/material.dart';
// // import 'package:listview_builder_with_image_and_text/models/catalog.dart';
// import 'package:smarthaajir/models/catalog.dart';

// class ItemWidget extends StatelessWidget {
//   final Item item;
//   const ItemWidget({Key? key, required this.item}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Card(
//         elevation: 0,
//         color: Colors.purple.shade100,
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: ListTile(
//             leading: Image.network(
//               item.image,
//               height: 90,
//               width: 90,
//             ),
//             title: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Center(
//                   child: Text(item.name,
//                       style: const TextStyle(
//                           color: Colors.black,
//                           fontWeight: FontWeight.bold,
//                           fontSize: 18))),
//             ),
//             subtitle: Center(
//                 child: Text(item.desc,
//                     style: TextStyle(
//                         color: Colors.indigo.shade500,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 15))),
//             trailing: Text(
//               "\$${item.price}",
//               style: const TextStyle(
//                   color: Colors.purple,
//                   fontWeight: FontWeight.bold,
//                   fontSize: 20),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
