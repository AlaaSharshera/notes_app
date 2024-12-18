import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomNotesCard extends StatelessWidget {
  const CustomNotesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 12, top: 12),
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 8),
      height: 200,
      decoration: BoxDecoration(
          color: const Color(0xffFFCD7A),
          borderRadius: BorderRadius.circular(16)),
      child: Column(
        children: [
          ListTile(
            title: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Text("Flutter development",
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold)),
            ),
            subtitle: Text("learn more with Flutter development jkjkjrk",
                style: GoogleFonts.poppins(
                  color: Colors.black54,
                  fontSize: 18,
                )),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.delete,
                size: 36,
                color: Colors.black,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text("May , 1 , 2024 ",
                  style: GoogleFonts.poppins(
                    color: Colors.black54,
                    fontSize: 16,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
