import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButtomSheetBody extends StatelessWidget {
  const CustomButtomSheetBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      width: double.infinity,
      decoration: const BoxDecoration(
          color: Color(0xff303030),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Spacer(
              flex: 1,
            ),
            TextField(
              cursorColor: const Color(0xff53EBD6),
              decoration: InputDecoration(
                label: Text(
                  "Title",
                  style: GoogleFonts.poppins(
                      color: const Color(0xff53EBD6), fontSize: 20),
                ),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 26, horizontal: 16),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Color(0xff53EBD6)),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const Spacer(
              flex: 1,
            ),
            TextField(
              cursorColor: const Color(0xff53EBD6),
              decoration: InputDecoration(
                label: Text(
                  "content",
                  style: GoogleFonts.poppins(
                      color: const Color(0xff53EBD6), fontSize: 20),
                ),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 54, horizontal: 16),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Color(0xff53EBD6)),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const Spacer(
              flex: 6,
            ),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: const WidgetStatePropertyAll(
                      Color(0xff53EBD6),
                    ),
                    shape: WidgetStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Add",
                    style:
                        GoogleFonts.poppins(color: Colors.black, fontSize: 18),
                  )),
            ),
            const Spacer(
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}
