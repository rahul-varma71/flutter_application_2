class Item {
  final String id;
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

final product = [
  Item(
      id: "C00",
      name: "Iphonr 11 pro max",
      desc: "Apple iphone 11th genaration",
      price: 129999,
      color: "#33505a",
      image:
          "https://rukminim2.flixcart.com/image/416/416/k2jbyq80pkrrdj/mobile-refurbished/e/b/u/iphone-11-pro-max-64-a-mwhg2hn-a-apple-0-original-imafkg2fg3evmhuy.jpeg?q=70")
];
