import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';

class EmptyQrQubit extends Cubit<bool> {
  bool isFirstTime = true;
  EmptyQrQubit() : super(false);

  void changeQrFieldStatus({required TextEditingController controller}) {
    String qrText = controller.text.trim();
    if (qrText.isEmpty) {
      emit(true);
    } else if (qrText.isNotEmpty) {
      isFirstTime = false;
      emit(false);
    }
  }
}
