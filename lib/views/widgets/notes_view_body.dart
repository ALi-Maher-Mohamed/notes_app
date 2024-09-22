import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/notes_list_view.dart';

import 'custom_app_bar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});
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
