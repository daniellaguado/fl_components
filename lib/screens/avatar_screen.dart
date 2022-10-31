import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ekoesfera'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 5),
            child: CircleAvatar(
              child: const Text('EE'),
              backgroundColor: Colors.green[600],
            ),
          )
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          backgroundImage: NetworkImage(
              'https://i.pinimg.com/564x/8b/6e/c6/8b6ec60427f9b17c1d9aaf4c415babe3.jpg'),
          maxRadius: 110,
        ),
      ),
    );
  }
}
