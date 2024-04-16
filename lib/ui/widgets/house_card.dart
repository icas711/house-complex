import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:housing_complex_objects/model/housing_complex_items.dart';
import 'package:storage_utility/storage_utility.dart' as storage;

class HouseCard extends StatelessWidget {
  final Item item;

  const HouseCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.goNamed(
          'object-detail',
          extra: {'item': item},
          pathParameters: {
            'title': item.title.hashCode.toString(),
          },
        );
      },
      child: DecoratedBox(
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.grey.shade300,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(12)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade500,
                offset: const Offset(3, 3),
                blurRadius: 5,
                spreadRadius: 1,
              ),
            ]),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(
                height: 8,
              ),
              Text(item.title),
              const SizedBox(
                height: 8,
              ),
              Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Отснято за сегодня:',
                          style:
                              TextStyle(color: Colors.grey, fontSize: 14)),
                      RichText(
                        text: TextSpan(
                            style: const TextStyle(
                                color: Colors.black, fontSize: 18),
                            text: item.remaining_points.toString(),
                            children: [
                              const TextSpan(
                                  text: ' / ',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 14)),
                              TextSpan(
                                  text: item.total_points_count.toString(),
                                  style: const TextStyle(
                                      color: Colors.grey, fontSize: 14)),
                              const TextSpan(
                                  text: ' доступно',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 14)),
                            ]),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Съемка займет:',
                          style:
                          TextStyle(color: Colors.grey, fontSize: 14)),
                      Row(
                        children: [
                          Text(
                              style: const TextStyle(
                                  color: Colors.black, fontSize: 18),
                              (item.total_points_count * 5).toString()),
                          const Text(' / ',
                              style: TextStyle(
                                  color: Colors.grey, fontSize: 14)),
                          FutureBuilder(
                              future: _getSpace(),
                              builder: (context, snapshot) {
                                if (snapshot.hasData) {
                                  return Center(
                                    child: Text('${snapshot.data}', style: const TextStyle(
                                        color: Colors.grey, fontSize: 14)),
                                  );
                                } else {
                                  return const Center(
                                      child: Text("Загружаем...",style: TextStyle(
                                          color: Colors.grey, fontSize: 14)));
                                }
                              }),
                          const Text(' доступно',
                              style: TextStyle(
                                  color: Colors.grey, fontSize: 14)),
                        ],
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<String> _getSpace() async {
    final freeSpace=await storage.getFreeBytes()/1024/1024;
    return freeSpace<1 ? '0 МБ'
        : freeSpace/1024<1 ? '${freeSpace.round()} МБ'
        : '${appToStringAsFixed(freeSpace/1024,1)} ГБ';
  }
  String appToStringAsFixed(double number, int afterDecimal) {
    return '${number.toString().split('.')[0]}.${number.toString().split('.')[1].substring(0,afterDecimal)}';
  }
}
