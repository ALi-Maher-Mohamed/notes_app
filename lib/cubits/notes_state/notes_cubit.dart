import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:note_app/helper/constant.dart';
import 'package:note_app/models/note_models.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  fethAllNotes() async {
    try {
      var noteBox = Hive.box<NoteModel>(kNotesBox);
      List<NoteModel> notes = noteBox.values.toList();
      emit(NotesSuccess(notes));
    } catch (e) {
      emit(NotesFailure(e.toString()));
    }
  }
}
