import 'package:flutter/material.dart';
import 'package:quick_qr/app/theme/app_text_style.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onTap;
  final IconData? icon;
  final bool? isQuickActionButton;
  final Color? buttonColor;
  const CustomButton({super.key, required this.buttonText, required this.onTap, this.isQuickActionButton=false, this.icon, this.buttonColor});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(width:isQuickActionButton!? screenWidth/3:double.infinity, height: 52, child: ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: buttonColor??Color(0xFF306fc4)),
        onPressed: onTap, child: Row(
      mainAxisAlignment: isQuickActionButton!?MainAxisAlignment.spaceBetween:MainAxisAlignment.center,
      children: [
        isQuickActionButton!?Icon(icon, size: 22,):SizedBox.shrink(),
        Text(buttonText, style: AppTextStyle.buttonTextStyle)],)));
  }
}
