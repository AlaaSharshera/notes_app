import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/cubits/addnote_cubit.dart/addnote_cubit.dart';
import 'package:notes_app/models/notes_model.dart';
import 'package:notes_app/views/custom_button.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(
              height: 16,
            ),
            CustomTextField(
              hintText: "Title",
              onSaved: (value) {
                title = value;
              },
              maxLines: 1,
            ),
            const SizedBox(
              height: 16,
            ),
            CustomTextField(
              maxLines: 5,
              hintText: "Content",
              onSaved: (value) {
                subTitle = value;
              },
            ),
            const SizedBox(
              height: 48,
            ),
            CustomButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                  NotesModel noteModel = NotesModel(
                      title: title!,
                      subTitle: subTitle!,
                      date:
                          DateFormat('dd/MM/yyyy HH:mm').format(DateTime.now()),
                      color: Colors.blue.value);
                  BlocProvider.of<AddnoteCubit>(context).addNote(noteModel);
                } else {
                  autovalidateMode = AutovalidateMode.always;
                }
                setState(() {});
              },
              text: "Add",
            ),
            const SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
