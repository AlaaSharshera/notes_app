import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/constant.dart';

import 'package:notes_app/cubits/addnote_cubit.dart/addnote_states.dart';
import 'package:notes_app/models/notes_model.dart';

class AddnoteCubit extends Cubit<AddnoteCubitState> {
  AddnoteCubit() : super(AddNoteCubitInitialState());

  addNote(NotesModel note) async {
    emit(AddNoteCubitLoadingState());

    try {
      var notesBox = Hive.box<NotesModel>(kNotesBox);
      await notesBox.add(note);
      emit(AddNoteCubitSuccessState());
    } catch (e) {
      emit(AddNoteCubitFailureState(e.toString()));
    }
  }
}
