import 'package:flutter/material.dart';


class InputDecorations {

  static InputDecoration authInputDecoration({
    required String hintText,
    required String labelText,
    IconData? prefixIcon
  }) {
    return InputDecoration(
        
        //border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.blue
          ),
          borderRadius: BorderRadius.horizontal()
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.blue,
            width: 2
          )
        ),
        hintText: hintText,
        labelText: labelText,
        labelStyle: const TextStyle(
          color: Colors.grey
        ),
        prefixIcon: prefixIcon != null 
          ? Icon( prefixIcon, color: Colors.blue )
          : null
      );
  }  

}