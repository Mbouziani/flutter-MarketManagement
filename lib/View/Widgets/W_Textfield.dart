import 'package:flutter/material.dart';

class WTextField extends StatelessWidget {
  const WTextField({
    required this.controller,
    required this.hintText,
    this.textInputType,
    this.isReadonly,
    Key? key,
  }) : super(key: key);
  final String hintText;
  final TextEditingController controller;
  final TextInputType? textInputType;
  final bool? isReadonly;

  @override
  Widget build(BuildContext context) {
    return TextField(
      readOnly: isReadonly ?? false,
      controller: controller,
      keyboardType: textInputType ?? TextInputType.text,
      decoration: InputDecoration(
        hintText: hintText,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(7)),
          borderSide: BorderSide(
            color: Colors.black26,
            width: 1,
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(7)),
          borderSide: BorderSide(color: Colors.black26, width: 1),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(7)),
          borderSide: BorderSide(color: Colors.black45, width: 1.5),
        ),
      ),
    );
  }
}
