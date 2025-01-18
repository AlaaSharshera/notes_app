import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/addnote_cubit.dart/addnote_states.dart';

class AddnoteCubit extends Cubit<AddnoteCubitState> {
  AddnoteCubit() : super(AddNoteCubitInitialState());
}
