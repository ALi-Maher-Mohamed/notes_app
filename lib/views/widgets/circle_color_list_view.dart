import 'package:flutter/material.dart';

class ColorCIrcleListView extends StatelessWidget {
  const ColorCIrcleListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return ColorsCircle();
        },
      ),
    );
  }
}

class ColorsCircle extends StatelessWidget {
  const ColorsCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 24,
      backgroundColor: Colors.amber,
    );
  }
}
