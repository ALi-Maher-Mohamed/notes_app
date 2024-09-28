import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/notes_state/notes_cubit.dart';
import 'package:note_app/models/note_models.dart';
import 'package:note_app/widgets/custom_app_bar.dart';
import 'package:note_app/widgets/custom_text_filed.dart';
import 'package:note_app/widgets/edit_note_colors_list_view.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            CustomAppBar(
              onPressed: () {
                widget.note.title = title ?? widget.note.title;
                widget.note.subTitle = subtitle ?? widget.note.subTitle;
                widget.note.save();
                BlocProvider.of<NotesCubit>(context).fethAllNotes();
                Navigator.pop(context);
              },
              icon: Icons.check,
              title: 'Edite Note',
            ),
            const SizedBox(
              height: 50,
            ),
            CustomTextField(
                onChanged: (value) {
                  title = value;
                },
                hint: widget.note.title),
            const SizedBox(
              height: 16,
            ),
            CustomTextField(
              onChanged: (value) {
                subtitle = value;
              },
              hint: widget.note.subTitle,
              maxLines: 5,
            ),
            const SizedBox(
              height: 30,
            ),
            EditNoteColorsList(
              note: widget.note,
            )
          ],
        ));
  }
}
