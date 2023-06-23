import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'my_buttons.dart';

class MyCupertinoButton extends MyButton {
  final VoidCallback? onPressed;

  const MyCupertinoButton({
    Key? key,
    required String text,
    required this.onPressed,
    double fontSize = 25,
    Color color = Colors.black,
    EdgeInsetsGeometry padding = const EdgeInsets.all(15),
    EdgeInsetsGeometry margin = const EdgeInsets.symmetric(horizontal: 25),
  }) : super(
    key: key,
    text: text,
    onTap: onPressed,
    fontSize: fontSize,
    color: color,
    padding: padding,
    margin: margin,
  );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: padding,
        margin: margin,
        decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            //Darker Shadow On Bottom Right
            BoxShadow(
              color: Colors.grey.shade500,
              offset: const Offset(6, 6),
              blurRadius: 15,
              spreadRadius: 1,
            ),

            //Lighter Shadow On Top Left
            const BoxShadow(
              color: Colors.white,
              offset: Offset(-6, -6),
              blurRadius: 15,
              spreadRadius: 1,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              text,
              style: GoogleFonts.oswald(
                fontSize: fontSize,
                color: color,
              ),
            ),
            const Icon(
              Icons.arrow_drop_down,
              color: Colors.deepPurple,
            ),
          ],
        ),
      ),
    );
  }
}