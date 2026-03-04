import 'package:flutter/material.dart';
import 'package:quick_qr/core/constants/app_constants.dart';
import 'package:quick_qr/core/ui/dimensions.dart';
import 'package:quick_qr/core/widgets/custom_appbar.dart';
import 'package:quick_qr/core/widgets/custom_text_field.dart';

class QrGeneratorScreen extends StatefulWidget {
  const QrGeneratorScreen({super.key});

  @override
  State<QrGeneratorScreen> createState() => _QrGeneratorScreenState();
}

class _QrGeneratorScreenState extends State<QrGeneratorScreen> {
  final _qrTextController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        appBar: CustomAppbar(title: AppConstants.generateQR, centerTitle: true),
        body: Padding(
          padding: EdgeInsets.all(Dimensions.paddingSizeDefault),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [CustomTextField(controller: _qrTextController, validationText: '')],
          ),
        ),
      ),
    );
  }
}
