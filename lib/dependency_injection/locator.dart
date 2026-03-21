import 'dependency_injection.dart';

GetIt getIt = GetIt.instance;

class DependencyInjector {
  static void servicesLocator(){
    getIt.registerLazySingleton<EmptyQrQubit>(()=> EmptyQrQubit());
  }
}