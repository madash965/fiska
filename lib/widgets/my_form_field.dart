import 'package:flutter/material.dart';

class MyFormField extends StatelessWidget {
  final TextInputType keyboardType;
  final Function onChanged;
  final Function onSubmitted;
  final Function onSaved;
  final bool obscureText;
  final Function validator;
  final String initialValue;
  final int maxItems;
  final int maxLines;
  final InputDecoration decoration;
  final TextEditingController controller;

  MyFormField({
    Key key,
    this.maxItems,
    this.initialValue,
    this.keyboardType,
    this.maxLines,
    this.obscureText,
    this.onChanged,
    this.onSubmitted,
    this.validator,
    this.decoration,
    this.controller,
    this.onSaved,
  });
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initialValue,
      keyboardType: keyboardType,
      maxLines: maxLines,
      obscureText: obscureText,
      onChanged: onChanged,
      onFieldSubmitted: onSubmitted,
      validator: validator,
      decoration: decoration,
      controller: controller,
      maxLength: maxItems,
      onSaved: onSaved,
    );
  }
}
