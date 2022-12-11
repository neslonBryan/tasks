import 'package:flutter/material.dart';

import '../general/colors.dart';

class TextFieldNormalWidget extends StatelessWidget {
  String hintText;
  IconData icon;

  TextFieldNormalWidget({
    required this.hintText,
    required this.icon,
  });
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(vertical: 15.0, horizontal: 12.0),
        prefixIcon: Icon(icon, size: 20.0, color: KBrandPrimaryColor),
        hintText: hintText,
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
