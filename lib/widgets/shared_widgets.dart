import 'package:flutter/material.dart';

// REUSABLE LABEL WIDGET
Widget buildLabel(String text) {
  return Align(
    alignment: Alignment.centerLeft,
    child: Text(
      text,
      style: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.bold,
        color: Colors.grey[800],
      ),
    ),
  );
}

// REUSABLE TEXT FIELD WIDGET
Widget buildTextField({
  required TextEditingController controller,
  required String hint,
  bool isObscure = false,
  TextInputType inputType = TextInputType.text,
  String? Function(String?)? validator,
}) {
  return TextFormField(
    controller: controller,
    obscureText: isObscure,
    keyboardType: inputType,
    decoration: InputDecoration(
      hintText: hint,
      hintStyle: const TextStyle(color: Colors.grey, fontSize: 12),
      contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: Colors.grey),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: Colors.grey.shade400),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: Colors.black),
      ),
      isDense: true,
    ),
    validator: validator ?? (value) {
      if (value == null || value.isEmpty) return 'Required';
      return null;
    },
  );
}

// REUSABLE BUTTON STYLE
ButtonStyle get primaryButtonStyle {
  return ElevatedButton.styleFrom(
    backgroundColor: Colors.grey[300], // Light grey from design
    foregroundColor: Colors.black,
    elevation: 0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
  );
}