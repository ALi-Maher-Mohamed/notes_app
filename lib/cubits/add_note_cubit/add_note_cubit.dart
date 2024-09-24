import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:note_app/views/helper/constant.dart';
import 'package:note_app/views/widgets/cutom_note_item.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addNote(NoteItem note) async {
    emit(AddNoteLoading());
    try {
      var noteBox = Hive.box(kNotesBox);
      emit(AddNoteSucces());
      await noteBox.add(note);
    } catch (e) {
      AddNoteFailure(e.toString());
    }
  }
}
