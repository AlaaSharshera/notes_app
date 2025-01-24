import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_notes_card.dart';

class CustomNotesListview extends StatelessWidget {
  const CustomNotesListview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 2,
        itemBuilder: (context, index) {
          return const CustomNotesCard();
        },
      ),
    );
  }
}
