import 'package:equatable/equatable.dart';
import 'package:qr/qr.dart';

class CreateQrState extends Equatable{
  final QrImage? qrImage;
  const CreateQrState({this.qrImage});

  CreateQrState copyWith({QrImage? qrImg}){
    return CreateQrState(qrImage: qrImg);
  }

  @override
  List<Object?> get props => [qrImage];
}