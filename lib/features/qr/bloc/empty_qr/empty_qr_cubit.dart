import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
class EmptyQrQubit extends Cubit<bool>{
  EmptyQrQubit():super(false);

  void changeQrFieldStatus({required TextEditingController controller}) {
    String qrText = controller.text.trim();
    if(qrText.isEmpty){
      emit(true);
    }
    else if(qrText.isNotEmpty && qrText.length>=1){
      emit(false);
    }
  }
}

