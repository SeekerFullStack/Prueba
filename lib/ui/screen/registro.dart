import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';


class Registro extends StatefulWidget {
  final String usuario;
  final String apellido;

  const Registro({super.key, required this.usuario, required this.apellido});

  @override
  // ignore: library_private_types_in_public_api
  _RegistroState createState() => _RegistroState();
}

class _RegistroState extends State<Registro> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.blue,
          child: Center(
            child: SingleChildScrollView(
              child: ZoomIn(
                duration: const Duration(milliseconds: 300),
                child: Column(
                  children: [
                    Stack(
                      clipBehavior: Clip.none,
                      alignment: AlignmentDirectional.topCenter,
                      children: [
                        SingleChildScrollView(
                          child: Container(
                            width: double.infinity,
                            margin: const EdgeInsets.symmetric(
                              vertical: 15,
                              horizontal: 30,
                            ),
                            padding: const EdgeInsets.only(
                              left: 1,
                              top: 80,
                              right: 1,
                              bottom: 20,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(40),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.black,
                                  blurRadius: 100,
                                  spreadRadius: 20,
                                ),
                              ],
                            ),
                            child: Column(
                              children: [
                                const SizedBox(height: 5),
                                Text(
                                  'Felicidades \n ${widget.usuario} ${widget.apellido} \nhas sido registrado!',
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 5),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: -60,
                          child: Lottie.asset(
                            'assets/images/aprobado.json',
                            alignment: Alignment.center,
                            fit: BoxFit.contain,
                            width: 150,
                            height: 150,
                            repeat: true,
                            reverse: false,
                            animate: true,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
