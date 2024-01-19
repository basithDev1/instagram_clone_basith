import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    super.key,
    required this.contoller,
    this.isPass = false,
    required this.hintText,
    required this.keyboardType,
  });
  final TextEditingController contoller;
  final bool isPass;
  final String hintText;
  final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    final inputBorder = OutlineInputBorder(
      borderSide: Divider.createBorderSide(context),
    );
    return TextField(
      controller: contoller,
      decoration: InputDecoration(
        hintText: hintText,
        contentPadding: const EdgeInsets.all(10),
        filled: true,
        border: inputBorder,
        enabledBorder: inputBorder,
        focusedBorder: inputBorder,
      ),
      obscureText: isPass,
      keyboardType: keyboardType,
    );
  }
}
