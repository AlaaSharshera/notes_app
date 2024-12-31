import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_appbar.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class EditNotesViewBody extends StatelessWidget {
  const EditNotesViewBody({
    super.key,
  });

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
                Navigator.pop(context);
              },
            ),
            const SizedBox(
              height: 32,
            ),
            const CustomTextField(maxLines: 1, hintText: "Title"),
            const SizedBox(
              height: 16,
            ),
            const CustomTextField(maxLines: 5, hintText: "Content"),
          ],
        ),
      ),
    );
  }
}
