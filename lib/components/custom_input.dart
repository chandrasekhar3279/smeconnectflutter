import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  const CustomInput({this.hintText, this.controller, required this.labelText, super.key});

  final String? hintText;
  final TextEditingController? controller;
  final String labelText;
  @override
  Widget build(BuildContext context) {
    // TextEditingController controller = TextEditingController();
    return Container(
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          labelText: labelText,
          // labelStyle: TextStyle(leadingDistribution:),
          // floatingLabelStyle: TextStyle(),
          floatingLabelAlignment: FloatingLabelAlignment.start,
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              width: 2,
              color: Colors.black,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              width: 2,
              color: Colors.grey,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          hintText: hintText,
        ),
      ),
    );
  }
}
