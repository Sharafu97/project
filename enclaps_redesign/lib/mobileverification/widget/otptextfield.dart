import 'dart:ffi';

import 'package:enclaps_redesign/config/color.dart';
import 'package:enclaps_redesign/config/style.dart';
import 'package:flutter/material.dart';

class OtpTextField extends StatefulWidget {
  final String? hint;
  final textController;
  final bool? changed;

  OtpTextField({Key? key, this.hint, this.textController, this.changed})
      : super(key: key);

  @override
  _OtpTextFieldState createState() => _OtpTextFieldState();
}

class _OtpTextFieldState extends State<OtpTextField> {
  Color bg = kcWhite;

  change() {
    setState(() {});
  }

  Widget build(BuildContext context) {
    return TextField(
      // controller: textController,

      decoration: InputDecoration(
        fillColor: bg,
        filled: true,
        focusColor: Colors.blue,
        hintText: widget.hint,
        hintStyle: ktBody2,
        contentPadding: EdgeInsets.all(10),
        border: InputBorder.none,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100),
          borderSide: BorderSide(color: kcBorderColor, width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100),
          borderSide: BorderSide(color: kcBorderColor, width: 1),
        ),
      ),
      onTap: change,
    );
  }
}
