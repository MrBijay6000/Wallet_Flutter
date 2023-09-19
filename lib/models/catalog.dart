class CatalogModel {
  static final items = [
    Item(
      id: 1,
      name: "RS 10 Day Voice",
      desc: "RS 10,40 Ncell minutes",
      price: 10,
      color: "#33505a",
      image:
          "https://assets-cdn.kathmandupost.com/uploads/source/news/2023/third-party/thumb8-1686619828.jpg",
    ),
    Item(
        id: 2,
        name: "iPhone 13 pro",
        desc: "iPhones get the best apps first",
        price: 1199,
        color: "#33505a",
        image:
            "https://www.apple.com/v/iphone-13-pro/c/images/overview/design/finishes_1_sierra_blue__2bovafkl4yaa_large.jpg"),
    Item(
        id: 3,
        name: "IPhone 13",
        desc: "The software will always be up-to-date",
        price: 1299,
        color: "#33505a",
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfOxwodBL81UDhB4syHn3gYZOhD3EqjD_LDMyvmBaOt8JUxrcEVgA85FbJT4IJGyqhJfU&usqp=CAU"),
    Item(
        id: 4,
        name: "iPhone 11",
        desc: "Great customer support",
        price: 899,
        color: "#33505a",
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2YWQPNddTCfot6bCPOcq5wuc2D_LothyquLDIwTyxG6GVguUeSmUNHuVIT2v-arNIV-E&usqp=CAU"),
    Item(
        id: 5,
        name: "iPhone 10",
        desc: "Better design",
        price: 799,
        color: "#33505a",
        image:
            "https://www.gizmochina.com/wp-content/uploads/2019/09/Apple-iPhone-11-1.jpg"),
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}
