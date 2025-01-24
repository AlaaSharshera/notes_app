abstract class NotesStates {}

class NotesIntial extends NotesStates {}

class NotesLoadingState extends NotesStates {}

class NotesSuccessState extends NotesStates {}

class NotesFailureState extends NotesStates {
  String errorMessage;
  NotesFailureState(this.errorMessage);
}
