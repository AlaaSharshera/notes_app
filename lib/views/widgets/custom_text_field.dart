import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/helper/buildBorder.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    required this.padding,
    required this.lableText,
    super.key,
  });
  final String lableText;
  final double padding;

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
          label: Text(
            lableText,
            style: GoogleFonts.poppins(color: kPrimaryColor, fontSize: 20),
          ),
          contentPadding:
              EdgeInsets.symmetric(vertical: padding, horizontal: 16),
          enabledBorder: buildBorder(color: Colors.white),
          focusedBorder: buildBorder(
            color: kPrimaryColor,
          )),
    );
  }
}
