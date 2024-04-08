import 'package:flutter/material.dart';
import 'package:prueba/di/di_service.dart';
import 'package:prueba/ui/screen/home.dart';
import 'package:prueba/util/style/style.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  configureDependencies();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Prueba de Formulario ',
      theme: Style(selectedColor: 2).getTheme(),
      home: const HomePage(),
    );
  }
}
