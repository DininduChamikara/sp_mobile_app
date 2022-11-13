import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainTitle extends StatelessWidget {
  final String title;
  const MainTitle({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        title,
        style: const TextStyle(
          // fontFamily: GoogleFonts.poppins(fontSize: 40).toString(),
          color: Colors.black87,
          fontSize: 40,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
