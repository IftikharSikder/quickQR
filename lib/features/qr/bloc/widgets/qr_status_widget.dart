import 'package:flutter/material.dart';
import 'package:quick_qr/app/theme/app_text_style.dart';
import 'package:quick_qr/core/constants/app_constants.dart';
import 'package:quick_qr/core/ui/dimensions.dart';

class QrStatusWidget extends StatelessWidget {
  final bool? isAlert;
  final bool? isSuccess;
  const QrStatusWidget({super.key, this.isAlert=false, this.isSuccess=false});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 52,
      padding: EdgeInsets.symmetric(horizontal: Dimensions.paddingSizeDefault),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: isAlert!?Color(0xFFfbeded):isSuccess!?Color(0xFFe2f1ea):null,
        border: Border.all(width: 1.5, color: isAlert!?Color(0xFFb3c0c3):isSuccess!?Color(0xFFb7cfc6):Colors.white),
      ),
      child: Row(
        spacing: 10,
        mainAxisAlignment: isAlert!?MainAxisAlignment.start:isSuccess!?MainAxisAlignment.center:MainAxisAlignment.center,
          children: [
            Icon(isAlert!?Icons.warning:isSuccess!?Icons.check_circle:Icons.check_circle,color: isAlert!?Color(0xFFbb3530):isSuccess!?Color(0xFF338a5a):Colors.black),
            Text(isAlert!?AppConstants.qrEmptyFieldText:isSuccess!?AppConstants.qrSuccessText:"", style: isAlert!?AppTextStyle.alertTextStyle:AppTextStyle.alertTextStyle.copyWith(color: Color(0xFF338a5a)))
          ]),
    );
  }
}
