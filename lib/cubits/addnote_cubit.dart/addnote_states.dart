abstract class AddnoteCubitState {}

class AddNoteCubitInitialState extends AddnoteCubitState {}

class AddNoteCubitLoadingState extends AddnoteCubitState {}

class AddNoteCubitSuccessState extends AddnoteCubitState {}

class AddNoteCubitFailureState extends AddnoteCubitState {
  final String error;
  AddNoteCubitFailureState(this.error);
}
