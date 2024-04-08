import 'package:freezed_annotation/freezed_annotation.dart';
// 1. Define una clase para el modelo de datos del usuario con @freezed.
part 'registro_usuario_dto.freezed.dart';


@freezed
abstract class RegistroDTO with _$RegistroDTO {
  const factory RegistroDTO({
    required String usuario,
    required String contrasena,
    required String correo,
    required String nombre,
    required String apellido,
  }) = _RegistroDTO;
}
