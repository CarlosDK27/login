import 'package:flutter/material.dart';
import 'dart:ui';

class FrostedGlassBox extends StatelessWidget {
  const FrostedGlassBox({super.key, 
  required this.theWidth,
  required this.theHeigth,
  required this.theChild
  });

  final theWidth;
  final theHeigth;
  final theChild; 
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Container(  
        width: theWidth,
        height: theHeigth,
        color:  Color.fromARGB(253, 0, 0, 0),
        child: Stack(  
          children: [

            //gradient effect
    
            //child
            Center(child: theChild,)
          ],
        ),
      ),
    );
  }
}


