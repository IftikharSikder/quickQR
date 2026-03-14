import 'package:flutter/material.dart';
import 'package:quick_qr/core/ui/dimensions.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String validationText;
  const CustomTextField({super.key, required this.controller, required this.validationText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: (value){
        if(value==null || value.isEmpty){
          return validationText;
        }
        return null;
      },
      decoration: InputDecoration(
          border: _outlineInputBorder(context: context, isErrorBorder: false),
          enabledBorder: _outlineInputBorder(context: context, isErrorBorder: false),
          focusedBorder: _outlineInputBorder(context: context, isErrorBorder: false),
          errorBorder: _outlineInputBorder(context: context, isErrorBorder: false),
          focusedErrorBorder: _outlineInputBorder(context: context, isErrorBorder: false),
      ),
    );
  }
}

OutlineInputBorder _outlineInputBorder({
  required BuildContext context,
  required bool isErrorBorder,
}) => OutlineInputBorder(
  borderRadius: BorderRadius.circular(Dimensions.radiusDefault),
  borderSide: BorderSide(
    color: isErrorBorder
        ? Theme.of(context).colorScheme.error
        : Theme.of(context).primaryColor.withValues(alpha: .45), width: 1.8
  ),
);
