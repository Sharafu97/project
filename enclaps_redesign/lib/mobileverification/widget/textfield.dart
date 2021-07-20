import 'package:enclaps_redesign/config/color.dart';
import 'package:enclaps_redesign/config/style.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String? hint;
  final textController;

  const CustomTextField({Key? key, this.hint, this.textController})
      : super(key: key);
  Widget build(BuildContext context) {
    return TextField(
      // controller: textController,
      style: ktBody1,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: ktBody2,
        contentPadding: EdgeInsets.all(10),
        border: InputBorder.none,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40.0),
          borderSide: BorderSide(color: kcBorderColor, width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40.0),
          borderSide: BorderSide(color: kcBorderColor, width: 1),
        ),
      ),
    );
  }
}
