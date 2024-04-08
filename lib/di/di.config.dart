// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes


import 'package:flutter_riverpod/flutter_riverpod.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:prueba/di/componentes/perfiles/perfil_usuario_modulo.dart' as _i10;
import 'package:prueba/ui/registro/registro_usuario.dart' as _i8;
import 'package:prueba/ui/registro/registro_usuario_view.dart' as _i7;





extension GetItInjectableX on _i1.GetIt {
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final userRegisterModule = _$Modulo_usuario();
    
   
  
   gh.lazySingleton<
    _i6.StateNotifierProvider<_i7.RegistroView, _i8.RegistroUsuario>>(
  () => userRegisterModule.provideStateNotifier()
);
return this;
  }
}

class _$Modulo_usuario extends _i10.Modulo_usuario {}
