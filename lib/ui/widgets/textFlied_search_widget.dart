import 'package:flutter/material.dart';

import '../general/colors.dart';

class TextFieldSearchWidget extends StatelessWidget {
  const TextFieldSearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(vertical: 15.0, horizontal: 12.0),
        prefixIcon: Icon(Icons.search, size: 20.0, color: KBrandPrimaryColor),
        hintText: "Buscar tarea...",
        hintStyle: TextStyle(
          fontSize: 14.0,
          color: KBrandPrimaryColor.withOpacity(0.6),
        ),
        filled: true,
        fillColor: KBrandSecondaryColor,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14.0),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14.0),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
