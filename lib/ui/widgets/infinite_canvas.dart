import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:housing_complex_objects/model/housing_complex_items.dart';

class InfiniteCanvas extends StatefulWidget {
  final Item item;

  InfiniteCanvas({super.key, required this.item});

  @override
  State<InfiniteCanvas> createState() => InfiniteCanvasState();
}

class InfiniteCanvasState extends State<InfiniteCanvas> {
  late Offset startPosition;
  late Offset endPosition;
  double scaleSize = 1;

  final TransformationController _controller = TransformationController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
final scalePixels = MediaQuery.of(context).devicePixelRatio;
print(scalePixels);
    return InteractiveViewer(
      transformationController: _controller,
      onInteractionUpdate: (details) {
        setState(() {});
      },
      onInteractionEnd: (scaleEndDetails) {
        scaleSize = _controller.value.getMaxScaleOnAxis();
        setState(() {});
      },
      minScale: 0.1,
      maxScale: 8,
      boundaryMargin: const EdgeInsets.all(double.infinity),
      constrained: false,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Image.asset(
            'assets/mock_scheme.png',
            fit: BoxFit.scaleDown,
          ),
          for (final marker in widget.item.points) ...[
            Positioned(
              left: (marker['x']!.toDouble()-25/scaleSize)*scalePixels,
              bottom: (marker['y']!.toDouble()-25/scaleSize)*scalePixels,
              child: SizedBox(
                width: 50/scaleSize,
                height: 50/scaleSize,
                child: Image.asset(marker['status']=='completed'
                    ? 'assets/status_complete.png'
                :'assets/status_incomplete.png'),
              ),
            ),
          ]
          //Draw the background of result shape
        ],
      ),
    );
  }

  Offset toLocal(Offset global) {
    return _controller.toScene(global);
  }
}
