import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/cubits/add_note_cubit.dart/add_note_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/models/notes_model.dart';

class AddNoteCubit extends Cubit<AddNoteStates> {
  AddNoteCubit() : super(AddNoteIntial());

  addNote(NotesModel note) async {
    emit(AddNoteLoading());
    try {
      var notesbox = Hive.box<NotesModel>(kNotesBox);
      await notesbox.add(note);
      emit(AddNoteSuccess());
    } catch (e) {
      AddNoteFailure(e.toString());
    }
  }
}
