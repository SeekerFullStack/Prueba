import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:prueba/domain/registro_usuario_dto.dart';
import 'package:prueba/ui/registro/registro_usuario.dart';
import 'package:prueba/ui/registro/registro_usuario_view.dart';
import 'package:prueba/ui/screen/registro.dart';
import 'package:prueba/util/style/dialog_custom.dart';
import 'package:prueba/util/style/transitions/fade_route.dart';
import 'package:shared_library/shared_library.dart';

class PasswordField extends StatefulWidget {
  final String labelText;
  final IconData icon;

  const PasswordField({
    Key? key,
    required this.labelText,
    required this.icon,
  }) : super(key: key);

  @override
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: widget.labelText,
        prefixIcon: Icon(widget.icon),
        suffixIcon: IconButton(
          icon: Icon(_obscureText ? Icons.visibility : Icons.visibility_off),
          onPressed: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        counterText: "",
        alignLabelWithHint: true,
      ),
      obscureText: _obscureText,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Por favor, ingrese su contraseña';
        }
        return null;
      },
    );
  }
}

// ignore: must_be_immutable
class RegistroWidget extends BaseWidget<RegistroView, RegistroUsuario> {
  RegistroWidget({
    super.key,
    required super.extraParameter,
  }) {
    currentState = const RegistroUsuario.inicial();
  }

  bool hasNavigated = false;

  @override
  Widget buildWidget(BuildContext context, String extraParameter, WidgetRef ref, RegistroUsuario renderState) {
    return renderState.when(
      inicial: () => buildForm(context),
      cargando: () => const Center(child: CircularProgressIndicator()),
      error: () => const Text("error"),
      data: (RegistroDTO content) {
        if (!hasNavigated) {
          Future(() {
            viewModel.register(
              content.nombre,
              content.usuario,
              content.correo,
              content.nombre,
              content.apellido,
            );
           Navigator.push(
            context,
            FadeRoute(
              page: Registro(
                usuario: content.nombre,
                apellido: content.apellido,
              ),
            ),
          );
            hasNavigated = true;
          });
        }
        return const Center();
      },
    );
  }

  Widget buildForm(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    String usuario = '';
    String password = '';
    String correo = '';
    String nombre = '';
    String apellido = '';

    return Column(
      children: <Widget>[
        Lottie.asset(
          'assets/images/registro.json',
          height: 200,
          width: 200,
        ),
        const SizedBox(height: 5),
        Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              const SizedBox(height: 10),
              SizedBox(
                width: 300,
                child: TextFormField(
                  decoration: _inputDecoration('Usuario', Icons.flutter_dash),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, ingrese su usuario';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    usuario = value!;
                  },
                  maxLength: 20,
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: 300,
                child: PasswordField(
                  labelText: 'Contraseña',
                  icon: Icons.lock,
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: 300,
                child: TextFormField(
                  decoration: _inputDecoration('Correo', Icons.email),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, ingrese su correo';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    correo = value!;
                  },
                  maxLength: 30,
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: 300,
                child: TextFormField(
                  decoration: _inputDecoration('Nombre', Icons.person_outline_rounded),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, ingrese su nombre';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    nombre = value!;
                  },
                  maxLength: 15,
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: 300,
                child: TextFormField(
                  decoration: _inputDecoration('Apellido', Icons.person_outline_rounded),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, ingrese su apellido';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    apellido = value!;
                  },
                  maxLength: 15,
                ),
              ),
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                        viewModel.register(
                            usuario, password, correo, nombre, apellido);
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(150, 50),
                      textStyle: const TextStyle(fontSize: 18),
                    ),
                    child: const Text('Registrar'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      DialogCuston().showCustomDialog(
                        context: context,
                        title: "Muy Pronto!",
                        message: "Estará habilitado para usar la aplicación.",
                        onPositivePressed: () {
                          Navigator.of(context).pop();
                        },
                        onNegativePressed: () {
                          Navigator.of(context).pop();
                        },
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(150, 50),
                      textStyle: const TextStyle(fontSize: 18),
                    ),
                    child: const Text('Validar'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  InputDecoration _inputDecoration(String labelText, IconData icon) {
    return InputDecoration(
      labelText: labelText,
      prefixIcon: Icon(icon),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      contentPadding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      counterText: "",
      alignLabelWithHint: true,
    );
  }
}
