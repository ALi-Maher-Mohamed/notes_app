import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:note_app/helper/constant.dart';

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

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: ListView.builder(
        itemCount: kColors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: GestureDetector(
              onTap: () {
                currentclicked = index;
                BlocProvider.of<AddNoteCubit>(context).color = kColors[index];

                setState(() {});
              },
              child: ColorsCircle(
                color: kColors[index],
                isClicked: currentclicked == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
