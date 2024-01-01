// ignore_for_file: deprecated_member_use, unnecessary_null_comparison, use_key_in_widget_constructors, unnecessary_string_escapes, avoid_print, file_names

import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/catelog.dart';


class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({ required this.item})
      : assert(item != null);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          print("${item.name} pressed");
        },
        leading: Image.network( item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text(
          "\₹${item.price}",
          textScaleFactor: 1.5,
          style: const TextStyle(
            color: Colors.deepPurple,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
