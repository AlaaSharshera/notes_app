import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

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
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Spacer(
              flex: 1,
            ),
            const CustomTextField(
              hintText: "Title",
              maxLines: 1,
            ),
            const Spacer(
              flex: 1,
            ),
            const CustomTextField(
              maxLines: 5,
              hintText: "Content",
            ),
            const Spacer(
              flex: 8,
            ),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: const WidgetStatePropertyAll(
                      kPrimaryColor,
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
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
