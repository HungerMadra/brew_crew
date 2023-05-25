import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;

  const MyTextField({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: [
            const BoxShadow(
              color: Colors.white,
              offset: Offset(6, 6),
              blurRadius: 15,
              spreadRadius: 1,
            ),
             BoxShadow(
              color: Colors.grey.shade500,
              offset: const Offset(-6, -6),
              blurRadius: 15,
              spreadRadius: 1,
            ),
          ],
        ),
        child: TextField(
                controller: controller,
                obscureText:obscureText,
                style: GoogleFonts.bebasNeue(
                color: Colors.grey.shade700,
                fontSize: 16,
              ),
                decoration: InputDecoration(
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade400)
                  ),
                  fillColor: Colors.grey.shade200,
                  filled: true,
                  hintText:hintText,
                  hintStyle: TextStyle(color: Colors.grey.shade500), 
                ),
              ),
      ),
    );
  }
}
