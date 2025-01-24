import 'package:notes_app/models/notes_model.dart';

abstract class NotesStates {}

class NotesIntial extends NotesStates {}

class NotesLoadingState extends NotesStates {}

class NotesSuccessState extends NotesStates {
  final List<NotesModel> notes;
  NotesSuccessState(this.notes);
}

class NotesFailureState extends NotesStates {
  String errorMessage;
  NotesFailureState(this.errorMessage);
}
