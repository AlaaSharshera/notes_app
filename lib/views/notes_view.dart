import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/views/widgets/buttom_sheet_body.dart';
import 'package:notes_app/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              backgroundColor: const Color(0xff303030),
              isScrollControlled: true,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              context: context,
              builder: (context) {
                return const CustomButtomSheetBody();
              });
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        backgroundColor: kPrimaryColor,
        child: const Icon(Icons.add),
      ),
      body: const NotesViewBody(),
    );
  }
}
