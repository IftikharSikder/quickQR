import 'package:flutter/material.dart';
import 'package:quick_qr/app/theme/app_text_style.dart';
import 'package:quick_qr/core/constants/app_constants.dart';
import 'package:quick_qr/core/ui/app_spacing.dart';
import 'package:quick_qr/core/ui/dimensions.dart';
import 'package:quick_qr/core/widgets/custom_appbar.dart';
import 'package:quick_qr/core/widgets/custom_button.dart';
import 'package:quick_qr/core/widgets/custom_text_field.dart';

class QrGeneratorScreen extends StatefulWidget {
  const QrGeneratorScreen({super.key});

  @override
  State<QrGeneratorScreen> createState() => _QrGeneratorScreenState();
}

class _QrGeneratorScreenState extends State<QrGeneratorScreen> {
  final TextEditingController _qrTextController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        appBar: CustomAppbar(title: AppConstants.generateQR, centerTitle: true),
        body: Padding(
          padding: EdgeInsets.all(Dimensions.paddingSizeOverLarge),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(AppConstants.qrLabelText, style: AppTextStyle.labelTextStyle.copyWith(fontWeight: FontWeight.bold)),
              space8.h,
              CustomTextField(controller: _qrTextController, validationText: AppConstants.qrEmptyFieldText),
              space22.h,
              CustomButton(buttonText: AppConstants.qrLabelText, onTap: () {
                if(_formKey.currentState!.validate()){

                }
              })
            ],
          ),
        ),
      ),
    );
  }
}
