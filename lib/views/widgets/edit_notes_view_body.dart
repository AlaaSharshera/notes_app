import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/addnote_cubit.dart/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/notes_model.dart';
import 'package:notes_app/views/widgets/custom_appbar.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class EditNotesViewBody extends StatefulWidget {
  const EditNotesViewBody({
    required this.notesModel,
    super.key,
  });
  final NotesModel notesModel;

  @override
  State<EditNotesViewBody> createState() => _EditNotesViewBodyState();
}

class _EditNotesViewBodyState extends State<EditNotesViewBody> {
  String? title;

  String? content;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            CustomAppBar(
              title: "Edit Notes",
              icon: const Icon(Icons.check),
              onpressed: () {
                widget.notesModel.title = title ?? widget.notesModel.title;
                widget.notesModel.subTitle =
                    content ?? widget.notesModel.subTitle;
                widget.notesModel.save();
                BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                Navigator.pop(context);
              },
            ),
            const SizedBox(
              height: 32,
            ),
            CustomTextField(
              maxLines: 1,
              hintText: "Title",
              onchanged: (value) {
                title = value!;
              },
            ),
            const SizedBox(
              height: 16,
            ),
            CustomTextField(
              maxLines: 5,
              hintText: "Content",
              onchanged: (value) {
                content = value!;
              },
            ),
          ],
        ),
      ),
    );
  }
}
