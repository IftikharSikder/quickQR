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
import 'package:quick_qr/features/qr/bloc/widgets/qr_status_widget.dart';

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
          child: BlocBuilder<EmptyQrQubit, bool>(builder: (context, isQREmpty){
            bool isFirstTime = context.read<EmptyQrQubit>().isFirstTime;
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(AppConstants.qrLabelText, style: AppTextStyle.labelTextStyle.copyWith(fontWeight: FontWeight.bold)),
                space8.h,
                CustomTextField(controller: _qrTextController, validationText: AppConstants.qrEmptyFieldText, isQrField: true),
                space22.h,
                CustomButton(buttonText: AppConstants.qrLabelText, onTap: () {
                  context.read<EmptyQrQubit>().changeQrFieldStatus(controller: _qrTextController);
                }),
                space22.h,
                isQREmpty?QrStatusWidget(isAlert: true):!isFirstTime && !isQREmpty?QrStatusWidget(isSuccess: true):SizedBox()
              ],
            );
          }),
        ),
      ),
    );
  }
}
