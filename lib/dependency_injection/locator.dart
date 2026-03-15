import 'dependency_injection.dart';

GetIt getIt = GetIt.instance;

class ServiceLocator {
  static void servicesLocator(){
    getIt.registerLazySingleton<EmptyQrQubit>(()=> EmptyQrQubit());
  }
}