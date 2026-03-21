import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qr/qr.dart';
import 'package:quick_qr/features/qr/bloc/create_qr/create_qr_event.dart';
import 'package:quick_qr/features/qr/bloc/create_qr/create_qr_state.dart';

class CreateQrBloc extends Bloc<CreateQrEvent, CreateQrState>{
  CreateQrBloc():super(CreateQrState()){
    on<CreateQr>(_createQR);
  }
  void _createQR(CreateQr event, Emitter<CreateQrState> emit){
    final qrCode = QrCode(4, QrErrorCorrectLevel.L)..addData(event.msg);
    final qrImage = QrImage(qrCode);
    emit(state.copyWith(qrImg: qrImage));
  }
}