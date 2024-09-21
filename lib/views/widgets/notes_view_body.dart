import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:note_app/views/widgets/cutom_note_item.dart';

import 'custom_app_bar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          CustomAppBar(),
          NoteItem()
        ],
      ),
    );
  }
}
