import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:prueba/domain/registro_usuario_dto.dart';
part 'registro_usuario.freezed.dart';

@freezed
abstract class RegistroUsuario with _$RegistroUsuario {
  const factory RegistroUsuario.inicial() = Inicial;
  const factory RegistroUsuario.cargando() = Cargando;
  const factory RegistroUsuario.error() = Error;
  const factory RegistroUsuario.data(RegistroDTO userRegisterDTO) = Data;
}
