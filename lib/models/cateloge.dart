class CatelogModel {
  static final items = [
    Item(
        id: 1,
        name: "APPLE iPhone 11 Pro Max ",
        desc: "Apple iphone 11th genaration",
        price: 129999,
        color: "#33505a",
        image:
            "https://rukminim2.flixcart.com/image/416/416/k2jbyq80pkrrdj/mobile-refurbished/e/b/u/iphone-11-pro-max-64-a-mwhg2hn-a-apple-0-original-imafkg2fg3evmhuy.jpeg?q=70"),
    Item(
        id: 3,
        name: "APPLE iPhone 12 Pro Max ",
        desc: "Apple iphone 12th genaration",
        price: 159999,
        color: "#00ac51",
        image:
            "https://rukminim2.flixcart.com/image/416/416/kg8avm80/mobile/g/z/c/apple-iphone-12-pro-max-dummyapplefsn-original-imafwgcyyemh9hbg.jpeg?q=70"),
    Item(
        id: 4,
        name: "APPLE iPhone 13 Pro Max ",
        desc: "Apple iphone 13th genaration",
        price: 100999,
        color: "#e0bfae",
        image:
            "https://rukminim2.flixcart.com/image/416/416/ktketu80/mobile/r/m/8/iphone-13-pro-max-mllj3hn-a-apple-original-imag6vpgphrzuffg.jpeg?q=70"),
    Item(
        id: 5,
        name: "APPLE iPhone 14 Pro Max ",
        desc: "Apple iphone 14th genaration",
        price: 108999,
        color: "#544ee4",
        image:
            "https://rukminim2.flixcart.com/image/416/416/xif0q/mobile/6/x/j/-original-imaghxejqvpwfqh2.jpeg?q=70"),
    Item(
        id: 6,
        name: "APPLE iPhone 15 Pro Max ",
        desc: "Apple iphone 15th genaration",
        price: 191999,
        color: "#f73984",
        image:
            "https://rukminim2.flixcart.com/image/416/416/xif0q/mobile/a/r/5/-original-imagtc3kcmph6ax5.jpeg?q=70")
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
