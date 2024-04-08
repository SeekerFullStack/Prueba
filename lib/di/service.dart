import 'package:get_it/get_it.dart';
import 'package:prueba/ui/registro/registro_usuario_view.dart';



GetIt getIt = GetIt.instance;

void serviceLocatorInit() {
  getIt.registerSingleton<RegistroView>(RegistroView());
 
}
// flutter packages pub run build_runner build --delete-conflicting-outputs
