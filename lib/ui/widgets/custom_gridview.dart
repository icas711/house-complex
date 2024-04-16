import 'dart:async';

import 'package:flutter/material.dart';
import 'package:housing_complex_objects/model/housing_complex_items.dart';
import 'package:housing_complex_objects/ui/widgets/house_card.dart';
import 'package:housing_complex_objects/utils/constants.dart';

class CustomGridView extends StatefulWidget {
  final List<Item> items;

  const CustomGridView({super.key, required this.items});

  @override
  State<CustomGridView> createState() => _CustomGridViewState();
}

class _CustomGridViewState extends State<CustomGridView> {
  bool _showToTopButton=false;
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      setState(() {
        _showToTopButton =
            _scrollController.offset >= _scrollController.position.maxScrollExtent * 0.5;
      });
    });
  }

  @override
  Widget build(BuildContext context) {


    return LayoutBuilder(
        builder: (context, constraints) {
          return Stack(
            children: [
              GridView.builder(
                controller: _scrollController,
                itemCount: widget.items.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  if (index < widget.items.length) {
                    return Padding(
                      padding:
                      const EdgeInsets.symmetric(horizontal: 8),
                      child: HouseCard(item: widget.items[index]),
                    );
                  }
                },
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: constraints.maxWidth > Routes.smallScreen
                      ? (constraints.maxWidth > Routes.mediumScreen
                      ? (constraints.maxWidth > Routes.largeScreen ? 4 : 3)
                      : 2)
                      : 1,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                    mainAxisExtent:100,
                  //childAspectRatio: 1,
                ),
              ),
              if(_showToTopButton)
                   ScrollToTopButton(scrollController: _scrollController),
            ],
          );
        });
  }
}
class ScrollToTopButton extends StatelessWidget {
  final ScrollController scrollController;
  const ScrollToTopButton({super.key, required this.scrollController});
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: GestureDetector(
        onTap: () {
          unawaited(scrollController.animateTo(
            0,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut,
          ));
        },
        child: Container(
          margin: const EdgeInsets.all(16),
          padding: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey,
          ),
          child: const Icon(Icons.arrow_upward, color: Colors.white),
        ),
      ),
    );
  }
}