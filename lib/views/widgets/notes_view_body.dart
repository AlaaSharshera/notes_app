import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/addnote_cubit.dart/notes_cubit/notes_cubit.dart';

import 'package:notes_app/views/widgets/custom_appbar.dart';

import 'package:notes_app/views/widgets/custom_notes_listview.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          CustomAppBar(
            title: "Notes",
            icon: const Icon(Icons.search),
            onpressed: () {},
          ),
          const CustomNotesListview(),
        ],
      ),
    );
  }
}
