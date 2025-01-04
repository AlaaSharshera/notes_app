import 'package:notes_app/cubits/add_note_cubit.dart/add_note_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddNoteCubit extends Cubit<AddNoteStates> {
  AddNoteCubit() : super(AddNoteIntial());
}
