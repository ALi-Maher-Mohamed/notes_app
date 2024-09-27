import 'package:flutter/material.dart';

class ColorsCircle extends StatelessWidget {
  const ColorsCircle({super.key, required this.isClicked, required this.color});
  final bool isClicked;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isClicked
        ? CircleAvatar(
            radius: 24,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 20,
              backgroundColor: color,
            ),
          )
        : CircleAvatar(
            radius: 24,
            backgroundColor: color,
          );
  }
}

class ColorCIrcleListView extends StatefulWidget {
  const ColorCIrcleListView({super.key});

  @override
  State<ColorCIrcleListView> createState() => _ColorCIrcleListViewState();
}

class _ColorCIrcleListViewState extends State<ColorCIrcleListView> {
  int currentclicked = 0;

  List<Color> colors = const [
    Color(0xff2B061E),
    Color(0xff875053),
    Color(0xffD2BF55),
    Color(0xffFFEED6),
    Color(0xffFBBFCA),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: ListView.builder(
        itemCount: colors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: GestureDetector(
              onTap: () {
                currentclicked = index;

                setState(() {});
              },
              child: ColorsCircle(
                color: colors[index],
                isClicked: currentclicked == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
