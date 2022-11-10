import 'package:flutter/material.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          color: Colors.green,
          height: MediaQuery.of(context).size.height * 0.20,
          child: const Center(
            child: Text(
              'Oussama Samer',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
        ListTile(
          onTap: () {},
          leading: const Text('Home'),
        ),
        ListTile(
          onTap: () {},
          leading: const Text('Profile'),
        ),
        ListTile(
          onTap: () {},
          leading: const Text('Calls'),
        ),
        ListTile(
          onTap: () {},
          leading: const Text('Messages'),
        ),
      ],
    );
  }
}
