import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note_app/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({
    super.key,
  });
  // final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const EditNoteView();
            },
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.only(
          left: 20,
          top: 20,
          bottom: 20,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: const Color(0xffffcc80)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: const Text(
                'Flutter Tips',
                style: TextStyle(color: Colors.black, fontSize: 24),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Text(
                  'Build your Carear with Ali Maher',
                  style: TextStyle(
                      color: Colors.black.withOpacity(.4), fontSize: 18),
                ),
              ),
              trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    FontAwesomeIcons.trash,
                    color: Colors.black,
                    size: 24,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text(
                'may 21,2024',
                style: TextStyle(
                  color: Colors.black.withOpacity(.8),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
