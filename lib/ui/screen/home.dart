import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prueba/ui/registro/registro_usuario_widget.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: _buildTitle(),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: RegistroWidget(extraParameter: 'extraParameter'),
        ),
      ),
    );
  }

  Widget _buildTitle() {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.purple],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
          child: const Center(
            child: Text(
              'RGISTRO',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                letterSpacing: 2.0,
              ),
            ),
          ),
        ),
        // Efecto de desenfoque para un aspecto futurista
        // Positioned.fill(
        //   child: ClipRect(
        //     child: BackdropFilter(
        //       filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
        //       child: Container(
        //         color: Colors.transparent,
        //       ),
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
