import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notes_app/cubits/addnote_cubit.dart/notes_cubit/notes_cubit.dart';

import 'package:notes_app/models/notes_model.dart';
import 'package:notes_app/views/edit_notes_view.dart';

class CustomNotesCard extends StatelessWidget {
  const CustomNotesCard({required this.notesModel, super.key});
  final NotesModel notesModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return EditNotesView(
            note: notesModel,
          );
        }));
      },
      child: Container(
        padding: const EdgeInsets.only(left: 12, top: 12),
        width: double.infinity,
        margin: const EdgeInsets.symmetric(vertical: 8),
        height: 200,
        decoration: BoxDecoration(
            color: Color(notesModel.color),
            borderRadius: BorderRadius.circular(16)),
        child: Column(
          children: [
            ListTile(
              title: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Text(notesModel.title,
                    style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
              ),
              subtitle: Text(notesModel.subTitle,
                  style: GoogleFonts.poppins(
                    color: Colors.black54,
                    fontSize: 18,
                  )),
              trailing: IconButton(
                onPressed: () {
                  notesModel.delete();
                  BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                },
                icon: const Icon(
                  Icons.delete,
                  size: 36,
                  color: Colors.black,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(notesModel.date,
                    style: GoogleFonts.poppins(
                      color: Colors.black54,
                      fontSize: 16,
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
