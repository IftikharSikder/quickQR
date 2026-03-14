import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback? onTap;
  const CustomButton({super.key, required this.buttonText, this.onTap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onTap, child: Text(buttonText,style: TextStyle(color: Colors.white)));
  }
}
