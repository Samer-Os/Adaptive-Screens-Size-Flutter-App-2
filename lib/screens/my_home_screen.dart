import 'package:flutter/material.dart';
import 'resolution_screen.dart';
import 'drawer.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text('My app'),
      ),
      drawer: screenWidth < 600
          ? const Drawer(
              child: DrawerScreen(),
            )
          : null,
      body: screenWidth < 600
          ? Center(
              child: Text(
                '${screenHeight.toStringAsFixed(0)} * ${screenWidth.toStringAsFixed(0)}',
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
            )
          : Row(
              children: [
                SizedBox(
                  width: screenWidth * 0.25,
                  child: const DrawerScreen(),
                ),
                Expanded(
                  child: ResolutionScreen(
                    height: screenHeight,
                    width: screenWidth,
                  ),
                ),
              ],
            ),
    );
  }
}
