import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_qr/app/theme/app_text_style.dart';
import 'package:quick_qr/core/constants/app_constants.dart';
import 'package:quick_qr/core/ui/app_spacing.dart';
import 'package:quick_qr/core/ui/dimensions.dart';
import 'package:quick_qr/core/widgets/custom_appbar.dart';
import 'package:quick_qr/core/widgets/custom_button.dart';
import 'package:quick_qr/core/widgets/custom_text_field.dart';
import 'package:quick_qr/features/qr/bloc/empty_qr/empty_qr_cubit.dart';

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
              CustomTextField(controller: _qrTextController, validationText: AppConstants.qrEmptyFieldText, isQrField: true),
              space22.h,
              BlocBuilder<EmptyQrQubit, bool>(builder: (context, isQREmpty){
                return CustomButton(buttonText: AppConstants.qrLabelText, onTap: () {
                  if(_formKey.currentState!.validate()){
                    context.read<EmptyQrQubit>().changeQrFieldStatus(controller: _qrTextController);

                    final isQrEmpty = context.read<EmptyQrQubit>().state;

                    if(isQrEmpty){
                      print("No text");
                    }
                    else if(!isQrEmpty){
                      print("Text Available");
                    }
                  }
                });
              })
            ],
          ),
        ),
      ),
    );
  }
}
