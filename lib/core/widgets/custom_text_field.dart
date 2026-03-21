import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_qr/core/ui/dimensions.dart';
import 'package:quick_qr/dependency_injection/dependency_injection.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String validationText;
  final bool? isQrField;
  const CustomTextField({super.key, required this.controller, required this.validationText, this.isQrField = false});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: (value){
        if(value==null || value.isEmpty){
          if(isQrField==null || isQrField==false){
            return validationText;
          }
        }
        return null;
      },
      onChanged: (value){
        if(value.isEmpty){
          // context.read<EmptyQrQubit>().isFirstTime=false;
          // context.read<EmptyQrQubit>().changeQrFieldStatus(controller: controller);
        }
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
