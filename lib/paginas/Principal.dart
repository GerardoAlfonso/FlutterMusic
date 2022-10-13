import 'package:flutter/material.dart';
import 'package:flutter_actividad3/colores/colores.dart';
import "package:flutter_feather_icons/flutter_feather_icons.dart";
import 'contenedores.dart';

class Principal extends StatelessWidget {
  const Principal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      backgroundColor: color2,
      body: Contenedores(),
    );
  }
}