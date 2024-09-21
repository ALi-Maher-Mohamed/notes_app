import 'package:flutter/material.dart';
import 'package:note_app/views/helper/constant.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 24.0,
        horizontal: 8,
      ),
      child: Column(
        children: [
          TextField(
            cursorColor: kPrimaryColor,
            decoration: InputDecoration(
              hintText: 'Title',
              border: BuildBorder(),
              enabledBorder: BuildBorder(),
              focusedBorder: BuildBorder(kPrimaryColor),
            ),
          )
        ],
      ),
    );
  }

  OutlineInputBorder BuildBorder([Color]) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: Color ?? Colors.white),
      borderRadius: BorderRadius.all(Radius.circular(8)),
    );
  }
}
