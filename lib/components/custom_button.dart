import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    required this.btnText,
    required this.onBtnClick,
    super.key,
  });
  final String btnText;
  final void Function() onBtnClick;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onBtnClick,
      child: Text(btnText),
    );
  }
}
