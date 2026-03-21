import '../features/qr/bloc/create_qr/create_qr_bloc.dart';
import 'dependency_injection.dart';

GetIt getIt = GetIt.instance;

class DependencyInjector {
  static void servicesLocator(){
    getIt.registerLazySingleton<EmptyQrQubit>(()=> EmptyQrQubit());
    getIt.registerLazySingleton<CreateQrBloc>(()=> CreateQrBloc());
  }
}