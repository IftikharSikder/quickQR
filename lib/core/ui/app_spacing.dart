import 'package:flutter/material.dart';

extension AppSpacing on num{
  SizedBox get h => SizedBox(height: toDouble());
  SizedBox get w => SizedBox(width: toDouble());
}

//height
const double space8 = 8;
const double space12 = 12;
const double space16 = 16;
const double space22 = 22;

//width
const double spaceW8 = 8;
const double spaceW12 = 12;
const double spaceW16 = 16;