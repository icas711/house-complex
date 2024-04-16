import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:housing_complex_objects/model/housing_complex_items.dart';
import 'package:housing_complex_objects/ui/widgets/infinite_canvas.dart';
class ObjectDetailsScreen extends StatelessWidget {
  final Item item;

  const ObjectDetailsScreen({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.title),
      ),
      body: Stack(
        children: [
          InfiniteCanvas(item: item,),
          const Align(alignment: Alignment.topCenter, child: Text('Схема объекта', style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),)),
        ],
      ),
    );
  }

}

