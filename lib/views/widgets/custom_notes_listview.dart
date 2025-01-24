import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/addnote_cubit.dart/notes_cubit/notes_cubit.dart';
import 'package:notes_app/cubits/addnote_cubit.dart/notes_cubit/notes_states.dart';
import 'package:notes_app/models/notes_model.dart';
import 'package:notes_app/views/widgets/custom_notes_card.dart';

class CustomNotesListview extends StatelessWidget {
  const CustomNotesListview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesStates>(
      builder: (context, state) {
        List<NotesModel> notes =
            BlocProvider.of<NotesCubit>(context).notes ?? [];
        return Expanded(
          child: ListView.builder(
            itemCount: notes.length,
            itemBuilder: (context, index) {
              return CustomNotesCard(
                notesModel: notes[index],
              );
            },
          ),
        );
      },
    );
  }
}
