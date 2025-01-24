import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/cubits/addnote_cubit.dart/notes_cubit/notes_states.dart';
import 'package:notes_app/models/notes_model.dart';

class NotesCubit extends Cubit<NotesStates> {
  NotesCubit() : super(NotesIntial());
  fetchAllNotes() {
    try {
      var notesBox = Hive.box<NotesModel>(kNotesBox);
      emit(NotesSuccessState(notesBox.values.toList()));
    } catch (e) {
      emit(NotesFailureState(e.toString()));
    }
  }
}
