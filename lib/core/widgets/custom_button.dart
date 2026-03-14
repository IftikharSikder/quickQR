import 'package:flutter/material.dart';
import 'package:quick_qr/app/theme/app_text_style.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onTap;
  const CustomButton({super.key, required this.buttonText, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(width:double.infinity, height: 52, child: ElevatedButton(onPressed: onTap, child: Text(buttonText, style: AppTextStyle.buttonTextStyle)));
  }
}
