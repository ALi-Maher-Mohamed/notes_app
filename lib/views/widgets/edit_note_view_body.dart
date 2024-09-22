import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_app_bar.dart';
import 'package:note_app/views/widgets/custom_text_filed.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            CustomAppBar(
              icon: Icons.check,
              title: 'Edite Note',
            ),
            SizedBox(
              height: 50,
            ),
            CustomTextField(hint: 'Title'),
            SizedBox(
              height: 16,
            ),
            CustomTextField(
              hint: 'Content',
              maxLines: 5,
            )
          ],
        ));
  }
}
