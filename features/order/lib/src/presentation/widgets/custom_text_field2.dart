import 'package:core/core.dart';
import 'package:flutter/material.dart';

class CustomTextField2 extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final Function(String value)? onChanged;
  final bool obscureText;
  final TextInputType? keyboardType;
  final int maxLines;

  const CustomTextField2({
    super.key,
    required this.controller,
    required this.label,
    this.onChanged,
    this.obscureText = false,
    this.keyboardType,
    this.maxLines = 1,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w700,
          ),
        ),
        12.sbh,
        TextFormField(
          controller: controller,
          onChanged: onChanged,
          obscureText: obscureText,
          keyboardType: keyboardType,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6.0),
              borderSide: const BorderSide(color: Colors.grey),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6.0),
              borderSide: const BorderSide(color: Colors.grey),
            ),
          ),
          maxLines: maxLines,
        ),
      ],
    );
  }
}
