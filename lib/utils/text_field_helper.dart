import 'package:flutter/material.dart';

InputDecoration editFieldsDecoration({required String hintText, required String labelText}){
  return InputDecoration(
    hintText: hintText,
    labelText: labelText,
    disabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(color: Color(0xffBDBDBD)),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(color: Color(0xffBDBDBD)),
    ),
    focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(color: Color(0xffBDBDBD), width: 2),
    ),
  );
}