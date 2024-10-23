// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';

class Appwidget {
  static TextStyle boldTextFieldStyle() {
    return const TextStyle(
        color: Colors.black87,
        fontSize: 20,
        fontWeight: FontWeight.bold,
        fontFamily: 'Poppins');
  }

  static TextStyle HeaderTextFieldStyle() {
    return const TextStyle(
        color: Colors.black87,
        fontSize: 24,
        fontWeight: FontWeight.bold,
        fontFamily: 'Poppins');
  }

  static TextStyle LightTextFieldStyle() {
    return const TextStyle(
        color: Colors.black38,
        fontSize: 14,
        fontWeight: FontWeight.w500,
        fontFamily: 'Poppins');
  }

  static TextStyle SemiBoldTextFieldStyle() {
    return const TextStyle(
        color: Colors.black87,
        fontSize: 18,
        fontWeight: FontWeight.w500,
        fontFamily: 'Poppins');
  }
}
