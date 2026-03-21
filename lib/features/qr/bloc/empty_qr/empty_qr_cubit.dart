import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';

class EmptyQrQubit extends Cubit<bool> {
  bool isFirstTime = true;
  EmptyQrQubit() : super(true);

  void changeQrFieldStatus({required TextEditingController controller}) {
    String qrText = controller.text.trim();
    if (qrText.isEmpty) {
      isFirstTime = false;
      emit(true);
    } else if (qrText.isNotEmpty) {
      isFirstTime = false;
      emit(false);
    }
  }
  void resetQrStatus({required TextEditingController controller}){
    isFirstTime = true;
    //controller.clear();
    emit(true);
  }
}
