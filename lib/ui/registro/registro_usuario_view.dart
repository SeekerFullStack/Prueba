import 'package:prueba/domain/registro_usuario_dto.dart';
import 'package:prueba/ui/registro/registro_usuario.dart';
import 'package:shared_library/shared_library.dart';

class RegistroView extends ViewModel<RegistroUsuario> {
  RegistroView() : super(const RegistroUsuario.inicial());

  Future<void> register(String usuario, String password, String email, String firstName, String lastName ) async {
    try {
      sendValue(const RegistroUsuario.cargando());

      await Future.delayed(const Duration(seconds: 1)); 
      sendValue(RegistroUsuario.data(RegistroDTO(usuario: usuario, contrasena: password, correo: email, nombre: firstName, apellido: lastName)));
    } catch (e) {
      print("error => $e");
      state = const RegistroUsuario.error();
    }
  }
}