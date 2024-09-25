import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/notes_state/notes_cubit.dart';
import 'package:note_app/views/widgets/notes_list_view.dart';

import 'custom_app_bar.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fethAllNotes();
    super.initState();
  }

  final data = const [
    Color(0xffFFCE7F),
    Color(0xffE7E89A),
    Color(0xff76D6EC),
    Color(0xffD89CDA),
  ];

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          CustomAppBar(
            icon: Icons.search,
            title: 'Notes',
          ),
          Expanded(child: CustomListView())
        ],
      ),
    );
  }
}
