import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:housing_complex_objects/bloc/housing_complex_bloc.dart';
import 'package:housing_complex_objects/model/housing_complex_items.dart';
import 'package:housing_complex_objects/ui/widgets/custom_gridview.dart';

class ViewDataWidget extends StatefulWidget {
  const ViewDataWidget({super.key});

  @override
  State<ViewDataWidget> createState() => _ViewDataWidgetState();
}

class _ViewDataWidgetState extends State<ViewDataWidget> {
  List<Item> _currentItems = [];
  List<Item> _currentSearchItems = [];
  String _searchString = '';
  Timer? searchDebounce;

  @override
  void initState() {
    context.read<HousingComplexBloc>().add(HousingComplexEvent.fetch());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<HousingComplexBloc>().state;
    return state.when(
      loading: _circularIndicator,
      loaded: (loaded) {
        _currentItems = loaded.payload;
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 15, bottom: 15, left: 16, right: 16),
              child: TextField(
                style: const TextStyle(color: Colors.black),
                cursorColor: Colors.grey,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white70,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  prefixIcon: const Icon(Icons.search, color: Colors.black),
                  suffixIcon: Image.asset('assets/icon.png'),
                  hintText: 'Найти...',
                  hintStyle: const TextStyle(color: Colors.grey),
                ),
                onChanged: (value) {
                  _searchString = value;
                  if (value != '') {
                    _currentSearchItems = [];
                    searchDebounce?.cancel();
                    searchDebounce =
                        Timer(const Duration(milliseconds: 100), () {
                      ///Todo поменять при сетевом запросе на 500
                    });
                    for (final item in _currentItems) {
                      if (item.title
                          .toLowerCase()
                          .contains(value.toLowerCase())) {
                        _currentSearchItems.add(item);
                      }
                    }
                  }
                  setState(() {});
                },
              ),
            ),
            Expanded(
                child: CustomGridView(
                    items: _searchString != ''
                        ? _currentSearchItems
                        : _currentItems)),
          ],
        );
      },
      error: () => const Center(
        child: Text('Not loaded'),
      ),
    );
  }

  Widget _circularIndicator() {
    return const Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator(
            strokeWidth: 2,
            color: Colors.blueAccent,
          ),
          SizedBox(width: 10),
          Text(
            'Загрузка...',
            style: TextStyle(color: Colors.blueAccent),
          ),
        ],
      ),
    );
  }
}
