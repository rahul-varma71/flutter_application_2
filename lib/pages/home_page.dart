// ignore_for_file: unnecessary_null_comparison, unused_local_variable

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:flutter_application_2/models/cateloge.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: Vx.m32,
          // header
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CatelogHeader(),
              if (CatelogModel.items != null && CatelogModel.items.isNotEmpty)
                const CatelogList()
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
    return const Column(
      children: [
        Text(
          "Apple Store",
          style: TextStyle(fontSize: 22, fontFamily: 'CrimsonText-Regular'),
        )
      ],
    );
  }
}

class CatelogList extends StatelessWidget {
  const CatelogList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: CatelogModel.items.length,
      itemBuilder: (context, index) {
        final catelog = CatelogModel.items[index];
        // ignore: prefer_typing_uninitialized_variables
        var catalog;
        return Catelogitem(catelog: catalog);
      },
    );
  }
}

class Catelogitem extends StatelessWidget {
  final Item catelog;

  const Catelogitem({
    Key? key,
    required this.catelog,
  })  : assert(catelog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox().white.square(100).make();
  }
}
