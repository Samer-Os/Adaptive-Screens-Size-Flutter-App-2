import 'package:flutter/material.dart';

class ResolutionScreen extends StatelessWidget {
  final double height;
  final double width;

  const ResolutionScreen({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '${height.toStringAsFixed(0)} * ${width.toStringAsFixed(0)}',
        style: const TextStyle(
          fontSize: 20,
        ),
      ),
    );
  }
}
