import 'package:flutter/material.dart';
import 'package:notes_app/models/notes_model.dart';
import 'package:notes_app/views/widgets/edit_notes_view_body.dart';

class EditNotesView extends StatelessWidget {
  const EditNotesView({required this.note, super.key});
  final NotesModel note;

  @override
  Widget build(BuildContext context) {
    return EditNotesViewBody(
      notesModel: note,
    );
  }
}
