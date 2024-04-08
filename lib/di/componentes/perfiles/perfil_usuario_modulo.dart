import 'package:injectable/injectable.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prueba/ui/registro/registro_usuario.dart';
import 'package:prueba/ui/registro/registro_usuario_view.dart';


@module
@module
// ignore: camel_case_types
abstract class Modulo_usuario {
  @lazySingleton
  StateNotifierProvider<RegistroView, RegistroUsuario> provideStateNotifier() {
    return StateNotifierProvider<RegistroView, RegistroUsuario>((ref) {
      return RegistroView();
    });
  }
}