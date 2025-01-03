import 'package:flutter/material.dart';
import 'package:notes_app/views/custom_Button.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class CustomButtomSheetBody extends StatelessWidget {
  const CustomButtomSheetBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: AddNoteForm(),
    );
  }
}

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
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(
              height: 16,
            ),
            const CustomTextField(
              hintText: "Title",
              maxLines: 1,
            ),
            const SizedBox(
              height: 16,
            ),
            const CustomTextField(
              maxLines: 5,
              hintText: "Content",
            ),
            const SizedBox(
              height: 48,
            ),
            CustomButton(
              onPressed: () {
                Navigator.pop(context);
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
