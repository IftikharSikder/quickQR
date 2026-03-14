import 'package:bloc/bloc.dart';
class EmptyQrQubit extends Cubit<bool>{
  EmptyQrQubit():super(false);

  void changeQrFieldStatus() {
    emit(!state);
  }
}