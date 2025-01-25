import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/models/notes_model.dart';

class NotesCubit extends Cubit<List<NotesModel>> {
  NotesCubit() : super([]);
  List<NotesModel>? notes;
  fetchAllNotes() {
    var notesBox = Hive.box<NotesModel>(kNotesBox);
    notes = notesBox.values.toList();
    emit(notes!);
  }
}
