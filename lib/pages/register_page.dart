import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Colors.red,
            height: 100,
            width: 100,
            child: const Row(
              children: [
                Text("Hello"),
                Text("World"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
