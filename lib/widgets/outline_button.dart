import 'package:flutter/material.dart';

Widget outlineButton({required String text, required VoidCallback action}) {
  return OutlinedButton(
    onPressed: action,
    style: OutlinedButton.styleFrom(minimumSize: Size(double.infinity, 48)),
    child: Text(text),
  );
}
