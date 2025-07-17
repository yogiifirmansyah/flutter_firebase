import 'package:flutter/material.dart';

Widget buildTextField({
  required String label,
  required IconData icon,
  bool obscure = false,
}) {
  return TextField(
    obscureText: obscure,
    decoration: InputDecoration(
      labelText: label,
      prefixIcon: Icon(icon),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
    ),
  );
}
