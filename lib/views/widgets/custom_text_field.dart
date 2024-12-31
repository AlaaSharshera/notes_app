import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/helper/buildBorder.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    required this.maxLines,
    required this.hintText,
    super.key,
  });
  final String hintText;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: GoogleFonts.poppins(color: kPrimaryColor, fontSize: 20),
          enabledBorder: buildBorder(color: Colors.white),
          focusedBorder: buildBorder(
            color: kPrimaryColor,
          )),
    );
  }
}
