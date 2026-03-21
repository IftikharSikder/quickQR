import 'package:equatable/equatable.dart';

class CreateQrEvent extends Equatable{
  @override
  List<Object?> get props => [];
}

class CreateQr extends CreateQrEvent{
  final String msg;
  CreateQr({required this.msg});
}
