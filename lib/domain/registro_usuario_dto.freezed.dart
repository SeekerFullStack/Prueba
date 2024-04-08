// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'registro_usuario_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RegistroDTO {
  String get usuario => throw _privateConstructorUsedError;
  String get contrasena => throw _privateConstructorUsedError;
  String get correo => throw _privateConstructorUsedError;
  String get nombre => throw _privateConstructorUsedError;
  String get apellido => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegistroDTOCopyWith<RegistroDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistroDTOCopyWith<$Res> {
  factory $RegistroDTOCopyWith(
          RegistroDTO value, $Res Function(RegistroDTO) then) =
      _$RegistroDTOCopyWithImpl<$Res, RegistroDTO>;
  @useResult
  $Res call(
      {String usuario,
      String contrasena,
      String correo,
      String nombre,
      String apellido});
}

/// @nodoc
class _$RegistroDTOCopyWithImpl<$Res, $Val extends RegistroDTO>
    implements $RegistroDTOCopyWith<$Res> {
  _$RegistroDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? usuario = null,
    Object? contrasena = null,
    Object? correo = null,
    Object? nombre = null,
    Object? apellido = null,
  }) {
    return _then(_value.copyWith(
      usuario: null == usuario
          ? _value.usuario
          : usuario // ignore: cast_nullable_to_non_nullable
              as String,
      contrasena: null == contrasena
          ? _value.contrasena
          : contrasena // ignore: cast_nullable_to_non_nullable
              as String,
      correo: null == correo
          ? _value.correo
          : correo // ignore: cast_nullable_to_non_nullable
              as String,
      nombre: null == nombre
          ? _value.nombre
          : nombre // ignore: cast_nullable_to_non_nullable
              as String,
      apellido: null == apellido
          ? _value.apellido
          : apellido // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegistroDTOImplCopyWith<$Res>
    implements $RegistroDTOCopyWith<$Res> {
  factory _$$RegistroDTOImplCopyWith(
          _$RegistroDTOImpl value, $Res Function(_$RegistroDTOImpl) then) =
      __$$RegistroDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String usuario,
      String contrasena,
      String correo,
      String nombre,
      String apellido});
}

/// @nodoc
class __$$RegistroDTOImplCopyWithImpl<$Res>
    extends _$RegistroDTOCopyWithImpl<$Res, _$RegistroDTOImpl>
    implements _$$RegistroDTOImplCopyWith<$Res> {
  __$$RegistroDTOImplCopyWithImpl(
      _$RegistroDTOImpl _value, $Res Function(_$RegistroDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? usuario = null,
    Object? contrasena = null,
    Object? correo = null,
    Object? nombre = null,
    Object? apellido = null,
  }) {
    return _then(_$RegistroDTOImpl(
      usuario: null == usuario
          ? _value.usuario
          : usuario // ignore: cast_nullable_to_non_nullable
              as String,
      contrasena: null == contrasena
          ? _value.contrasena
          : contrasena // ignore: cast_nullable_to_non_nullable
              as String,
      correo: null == correo
          ? _value.correo
          : correo // ignore: cast_nullable_to_non_nullable
              as String,
      nombre: null == nombre
          ? _value.nombre
          : nombre // ignore: cast_nullable_to_non_nullable
              as String,
      apellido: null == apellido
          ? _value.apellido
          : apellido // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegistroDTOImpl implements _RegistroDTO {
  const _$RegistroDTOImpl(
      {required this.usuario,
      required this.contrasena,
      required this.correo,
      required this.nombre,
      required this.apellido});

  @override
  final String usuario;
  @override
  final String contrasena;
  @override
  final String correo;
  @override
  final String nombre;
  @override
  final String apellido;

  @override
  String toString() {
    return 'RegistroDTO(usuario: $usuario, contrasena: $contrasena, correo: $correo, nombre: $nombre, apellido: $apellido)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistroDTOImpl &&
            (identical(other.usuario, usuario) || other.usuario == usuario) &&
            (identical(other.contrasena, contrasena) ||
                other.contrasena == contrasena) &&
            (identical(other.correo, correo) || other.correo == correo) &&
            (identical(other.nombre, nombre) || other.nombre == nombre) &&
            (identical(other.apellido, apellido) ||
                other.apellido == apellido));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, usuario, contrasena, correo, nombre, apellido);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegistroDTOImplCopyWith<_$RegistroDTOImpl> get copyWith =>
      __$$RegistroDTOImplCopyWithImpl<_$RegistroDTOImpl>(this, _$identity);
}

abstract class _RegistroDTO implements RegistroDTO {
  const factory _RegistroDTO(
      {required final String usuario,
      required final String contrasena,
      required final String correo,
      required final String nombre,
      required final String apellido}) = _$RegistroDTOImpl;

  @override
  String get usuario;
  @override
  String get contrasena;
  @override
  String get correo;
  @override
  String get nombre;
  @override
  String get apellido;
  @override
  @JsonKey(ignore: true)
  _$$RegistroDTOImplCopyWith<_$RegistroDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
