import 'package:flutter/material.dart';

import 'package:notes_app/views/widgets/custom_appbar.dart';

import 'package:notes_app/views/widgets/custom_notes_listview.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
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
