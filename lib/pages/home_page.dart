// ignore_for_file: use_key_in_widget_constructors, unused_local_variable, avoid_print, prefer_typing_uninitialized_variables, unnecessary_null_comparison, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_2/models/catelog.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:convert';
import 'package:velocity_x/velocity_x.dart';


class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 

  @override
  void initState() {
    super.initState();
    loadData();
  }

   loadData() async {
    await Future.delayed(const Duration(seconds: 2));
    final catelogeJson = 
      await rootBundle.loadString("assets/files/cateloge.json");
    final decodeData = jsonDecode(catelogeJson);
    var productsData = decodeData["products"];
    CatalogModel.items = List.from(productsData)
    .map<Item>((item) => Item.fromMap(item))
    .toList();
    setState(() {
      
    });
   }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(backgroundColor: Color.fromARGB(38, 194, 117, 117),
         body: SafeArea(
        child: Container(
          padding: Vx.m32,
          // header
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CatelogHeader(),
              if (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
                const CatelogList().expand()
              else
                const Center(child: CircularProgressIndicator())
            ],
          ),
        ),
      ),
    );
  }
  
 
}

class CatelogHeader extends StatelessWidget {
  const CatelogHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Apples Store".text.xl4.bold.color(Vx.black).make(),
        "Trending products".text.xl.make(),
      ],
    );
  }
}

class CatelogList extends StatelessWidget {
  const CatelogList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.items.length,
      itemBuilder: (context, index) {
        final catelog = CatalogModel.items[index];
        return Catelogitem(catelog: catelog);
      },
    );
  }
}

class Catelogitem extends StatelessWidget {
  final Item catelog;

  const Catelogitem({
    super.key,
    required this.catelog,
  }):assert(catelog != null);

  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(
        children: [
          CatelogImage(image: catelog.image,),
          Expanded(child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [catelog.name.text.bold.minFontSize(16).make().p1(),
            catelog.desc.text.make(),
            catelog.price.text.semiBold.make()],
          ))
        ],
      )
    ).white.roundedLg.square(100).make().py(5);
  }
}


class CatelogImage extends StatelessWidget {
final String image;

  const CatelogImage({super.key, required this.image});
  @override
  Widget build(BuildContext context) {
    return Image.network(
            image
            ).box.roundedLg.p16.make();
  }
}
