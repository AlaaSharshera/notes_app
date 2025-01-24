import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/cubits/addnote_cubit.dart/addnote_cubit.dart';
import 'package:notes_app/cubits/addnote_cubit.dart/addnote_states.dart';
import 'package:notes_app/views/widgets/add_note_form.dart';

class CustomButtomSheetBody extends StatelessWidget {
  const CustomButtomSheetBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddnoteCubit, AddnoteCubitState>(
      listener: (context, state) {
        if (state is AddNoteCubitSuccessState) {
          Navigator.pop(context);
        } else if (state is AddNoteCubitFailureState) {
          print("Try adding note a gain");
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: state is AddNoteCubitLoadingState ? true : false,
          child: SingleChildScrollView(
            child: AddNoteForm(),
          ),
        );
      },
    );
  }
}
