import 'package:flutter/material.dart';



class SquareTile extends StatelessWidget {
  final String imagePath;
  const SquareTile({
    super.key, required this.imagePath
    }
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
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
      child: Image.asset(imagePath, height:45, width: 45,
      ),
    );
  }
}