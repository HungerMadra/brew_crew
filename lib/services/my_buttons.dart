import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyButton extends StatelessWidget {
  final String text;
  final Function()? onTap;
  final double fontSize;
  final Color color;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry margin;


  const MyButton({
    Key? key,
    required this.text,
    required this.onTap,
    this.fontSize = 25,
    this.color = Colors.black,
    this.padding = const EdgeInsets.all(15),
    this.margin = const EdgeInsets.symmetric(horizontal: 25),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
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
        child: Center(
          child: Text(
            text,
            style: GoogleFonts.oswald(
              fontSize: fontSize,
              //fontWeight: FontWeight.bold,
              color: color,
            ),
          ),
        ),
      ),
    );
  }
}
