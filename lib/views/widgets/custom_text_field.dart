import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/helper/buildBorder.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    required this.maxLines,
    required this.hintText,
    this.onSaved,
    super.key,
  });
  final String hintText;
  final int maxLines;
  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines,
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return "field is required";
        }
      },
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
          errorBorder: buildBorder(color: Colors.red),
          border: buildBorder(
            color: kPrimaryColor,
          ),
          hintText: hintText,
          hintStyle: GoogleFonts.poppins(color: kPrimaryColor, fontSize: 20),
          enabledBorder: buildBorder(color: Colors.white),
          focusedBorder: buildBorder(
            color: kPrimaryColor,
          )),
    );
  }
}
