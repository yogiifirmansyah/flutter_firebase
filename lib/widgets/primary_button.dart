import 'package:flutter/material.dart';

Widget primaryButton({required String text, required VoidCallback action}) {
  return ElevatedButton(
    onPressed: action,
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.deepPurple,
      foregroundColor: Colors.white,
      minimumSize: Size(double.infinity, 48),
    ),
    child: Text(text),
  );
}
