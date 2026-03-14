import 'package:flutter/material.dart';
import 'package:quick_qr/core/constants/app_constants.dart';
import 'package:quick_qr/core/ui/dimensions.dart';

class AppTextStyle {
  static final TextStyle labelTextStyle = TextStyle(
    fontFamily: 'Roboto',
    color: AppConstants.primaryColor.withValues(alpha: .9),
    fontSize: Dimensions.fontSizeDefault
  );

  static final TextStyle buttonTextStyle = TextStyle(
      fontFamily: 'Roboto',
      color: Colors.white,
      fontSize: Dimensions.fontSizeLarge,
      fontWeight: FontWeight.bold
  );
}

