import 'package:flutter/material.dart';
import 'package:note_app/helper/constant.dart';
import 'package:note_app/models/note_models.dart';
import 'package:note_app/widgets/circle_color_list_view.dart';

class EditNoteColorsList extends StatefulWidget {
  const EditNoteColorsList({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteColorsList> createState() => _EditNoteColorsListState();
}

class _EditNoteColorsListState extends State<EditNoteColorsList> {
  late int currentclicked;
  void initState() {
    currentclicked = kColors.indexOf(Color(widget.note.color));
    super.initState();
  }

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
                widget.note.color = kColors[index].value;

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
